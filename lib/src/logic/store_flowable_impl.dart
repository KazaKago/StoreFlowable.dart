import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/cache/cache_data_manager.dart';
import 'package:store_flowable/src/core/loading_state_stream.dart';
import 'package:store_flowable/src/datastate/data_state.dart';
import 'package:store_flowable/src/exception/no_such_element_exception.dart';
import 'package:store_flowable/src/flowable_data_state_manager.dart';
import 'package:store_flowable/src/getting_from.dart';
import 'package:store_flowable/src/logic/data_selector.dart';
import 'package:store_flowable/src/logic/data_state_mapper.dart';
import 'package:store_flowable/src/origin/origin_data_manager.dart';
import 'package:store_flowable/src/pagination/oneway/pagination_store_flowable.dart';
import 'package:store_flowable/src/pagination/twoway/two_way_pagination_store_flowable.dart';
import 'package:store_flowable/src/store_flowable.dart';

class StoreFlowableImpl<KEY, DATA> implements StoreFlowable<KEY, DATA>, PaginationStoreFlowable<KEY, DATA>, TwoWayPaginationStoreFlowable<KEY, DATA> {
  factory StoreFlowableImpl({
    required final KEY key,
    required final FlowableDataStateManager<KEY> flowableDataStateManager,
    required final CacheDataManager<DATA> cacheDataManager,
    required final OriginDataManager<DATA> originDataManager,
    required final Future<bool> Function(DATA cachedData) needRefresh,
  }) {
    final dataSelector = DataSelector<KEY, DATA>(key, flowableDataStateManager, cacheDataManager, originDataManager, needRefresh);
    return StoreFlowableImpl._(key, flowableDataStateManager, cacheDataManager, dataSelector);
  }

  const StoreFlowableImpl._(
    this._key,
    this._flowableDataStateManager,
    this._cacheDataManager,
    this._dataSelector,
  );

  final KEY _key;
  final FlowableDataStateManager<KEY> _flowableDataStateManager;
  final CacheDataManager _cacheDataManager;
  final DataSelector<KEY, DATA> _dataSelector;

  @override
  LoadingStateStream<DATA> publish({final bool forceRefresh = false}) {
    return _flowableDataStateManager.getFlow(_key).doOnListen(() async {
      if (forceRefresh) {
        await _dataSelector.refreshAsync(clearCacheBeforeFetching: true);
      } else {
        await _dataSelector.validateAsync();
      }
    }).asyncMap((dataState) async {
      final data = await _cacheDataManager.load();
      return dataState.toLoadingState(data);
    });
  }

  @override
  Future<DATA?> getData({final GettingFrom from = GettingFrom.both}) async {
    try {
      return await requireData(from: from);
    } on Exception catch (_) {
      return null;
    }
  }

  @override
  Future<DATA> requireData({final GettingFrom from = GettingFrom.both}) async {
    switch (from) {
      case GettingFrom.both:
        await _dataSelector.validate();
        break;
      case GettingFrom.origin:
        await _dataSelector.refresh(clearCacheBeforeFetching: true);
        break;
      case GettingFrom.cache:
        //do nothing.
        break;
    }
    return _flowableDataStateManager.getFlow(_key).asyncExpand((dataState) async* {
      final data = await _dataSelector.loadValidCacheOrNull();
      if (dataState is DataStateFixed) {
        if (data != null) {
          yield data;
        } else {
          throw const NoSuchElementException();
        }
      } else if (dataState is DataStateLoading) {
        //do nothing.
      } else if (dataState is DataStateError) {
        if (data != null) {
          yield data;
        } else {
          throw dataState.exception;
        }
      }
    }).first;
  }

  @override
  Future<void> validate() async {
    await _dataSelector.validate();
  }

  @override
  Future<void> refresh() async {
    await _dataSelector.refresh(clearCacheBeforeFetching: false);
  }

  @override
  Future<void> requestNextData({final bool continueWhenError = true}) async {
    await _dataSelector.requestNextData(continueWhenError: continueWhenError);
  }

  @override
  Future<void> requestPrevData({final bool continueWhenError = true}) async {
    await _dataSelector.requestPrevData(continueWhenError: continueWhenError);
  }

  @override
  Future<void> update(final DATA? newData, {final String? nextKey, final String? prevKey}) async {
    await _dataSelector.update(newData, nextKey, prevKey);
  }
}
