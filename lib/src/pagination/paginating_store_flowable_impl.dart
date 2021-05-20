import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/core/no_such_element_exception.dart';
import 'package:store_flowable/src/core/state_content.dart';
import 'package:store_flowable/src/core/state_stream.dart';
import 'package:store_flowable/src/data_state.dart';
import 'package:store_flowable/src/data_state_mapper.dart';
import 'package:store_flowable/src/flowable_data_state_manager.dart';
import 'package:store_flowable/src/getting_from.dart';
import 'package:store_flowable/src/pagination/paginating_cache_data_manager.dart';
import 'package:store_flowable/src/pagination/paginating_data_selector.dart';
import 'package:store_flowable/src/pagination/paginating_origin_data_manager.dart';
import 'package:store_flowable/src/pagination/paginating_store_flowable.dart';

class PaginatingStoreFlowableImpl<KEY, DATA> implements PaginatingStoreFlowable<KEY, DATA> {
  factory PaginatingStoreFlowableImpl({
    required final KEY key,
    required final FlowableDataStateManager<KEY> flowableDataStateManager,
    required final PaginatingCacheDataManager<DATA> cacheDataManager,
    required final PaginatingOriginDataManager<DATA> originDataManager,
    required final Future<bool> Function(DATA cachedData) needRefresh,
  }) {
    final dataSelector = PaginatingDataSelector<KEY, DATA>(key, flowableDataStateManager, cacheDataManager, originDataManager, needRefresh);
    return PaginatingStoreFlowableImpl._(key, flowableDataStateManager, needRefresh, dataSelector);
  }

  const PaginatingStoreFlowableImpl._(this._key, this._flowableDataStateManager, this._needRefresh, this._dataSelector);

  final KEY _key;
  final FlowableDataStateManager<KEY> _flowableDataStateManager;
  final Future<bool> Function(DATA cachedData) _needRefresh;
  final PaginatingDataSelector<KEY, DATA> _dataSelector;

  @override
  StateStream<DATA> publish({final bool forceRefresh = false}) {
    return _flowableDataStateManager.getFlow(_key).doOnListen(() {
      _dataSelector.doStateAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: false, additionalRequest: false);
    }).asyncMap((dataState) async {
      final data = await _dataSelector.load();
      final stateContent = StateContent.wrap(data);
      return dataState.mapState(stateContent);
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
        await _dataSelector.doStateAction(forceRefresh: false, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true, additionalRequest: false);
        break;
      case GettingFrom.origin:
        await _dataSelector.doStateAction(forceRefresh: true, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true, additionalRequest: false);
        break;
      case GettingFrom.cache:
        //do nothing.
        break;
    }
    return _flowableDataStateManager.getFlow(_key).asyncExpand((dataState) async* {
      final data = await _dataSelector.load();
      if (dataState is DataStateFixed) {
        if (data != null && !(await _needRefresh(data))) {
          yield data;
        } else {
          throw const NoSuchElementException();
        }
      } else if (dataState is DataStateLoading) {
        //do nothing.
      } else if (dataState is DataStateError) {
        if (data != null && !(await _needRefresh(data))) {
          yield data;
        } else {
          throw dataState.exception;
        }
      }
    }).first;
  }

  @override
  Future<void> validate() async {
    await _dataSelector.doStateAction(forceRefresh: false, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true, additionalRequest: false);
  }

  @override
  Future<void> refresh({final bool clearCacheWhenFetchFails = true, final bool continueWhenError = true}) async {
    await _dataSelector.doStateAction(forceRefresh: true, clearCacheBeforeFetching: false, clearCacheWhenFetchFails: clearCacheWhenFetchFails, continueWhenError: continueWhenError, awaitFetching: true, additionalRequest: false);
  }

  @override
  Future<void> requestAdditionalData({final bool continueWhenError = true}) async {
    await _dataSelector.doStateAction(forceRefresh: false, clearCacheBeforeFetching: false, clearCacheWhenFetchFails: false, continueWhenError: continueWhenError, awaitFetching: true, additionalRequest: true);
  }

  @override
  Future<void> update(final DATA? newData) async {
    await _dataSelector.update(newData);
  }
}
