import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/as_data_type.dart';
import 'package:store_flowable/core/no_such_element_exception.dart';
import 'package:store_flowable/core/state.dart';
import 'package:store_flowable/core/state_content.dart';
import 'package:store_flowable/data_state.dart';
import 'package:store_flowable/paging/paging_store_flowable.dart';
import 'package:store_flowable/paging/paging_store_flowable_responder.dart';
import 'package:store_flowable/src/data_state_mapper.dart';
import 'package:store_flowable/src/paging/paging_data_selector.dart';

class PagingStoreFlowableImpl<KEY, DATA> implements PagingStoreFlowable<KEY, DATA> {
  factory PagingStoreFlowableImpl(final PagingStoreFlowableResponder<KEY, DATA> storeFlowableResponder) {
    final dataSelector = PagingDataSelector<KEY, DATA>(
      storeFlowableResponder.getKey(),
      storeFlowableResponder.getFlowableDataStateManager(),
      storeFlowableResponder,
      storeFlowableResponder,
      storeFlowableResponder.needRefresh,
    );
    return PagingStoreFlowableImpl._(storeFlowableResponder, dataSelector);
  }

  const PagingStoreFlowableImpl._(this._storeFlowableResponder, this._dataSelector);

  final PagingStoreFlowableResponder<KEY, DATA> _storeFlowableResponder;
  final PagingDataSelector<KEY, DATA> _dataSelector;

  @override
  Stream<State<List<DATA>>> publish({final bool forceRefresh = false}) {
    return _storeFlowableResponder.getFlowableDataStateManager().getFlow(_storeFlowableResponder.getKey()).doOnListen(() {
      _dataSelector.doStateAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: false, additionalRequest: false);
    }).asyncMap((dataState) async {
      final data = await _dataSelector.load();
      final stateContent = StateContent.wrap(data);
      return dataState.mapState(stateContent);
    });
  }

  @override
  Future<List<DATA>> get({final AsDataType type = AsDataType.mix}) async {
    switch (type) {
      case AsDataType.mix:
        await _dataSelector.doStateAction(forceRefresh: false, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true, additionalRequest: false);
        break;
      case AsDataType.fromOrigin:
        await _dataSelector.doStateAction(forceRefresh: true, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true, additionalRequest: false);
        break;
      case AsDataType.fromCache:
        //do nothing.
        break;
    }
    return _storeFlowableResponder.getFlowableDataStateManager().getFlow(_storeFlowableResponder.getKey()).asyncExpand((dataState) async* {
      final data = await _dataSelector.load();
      if (dataState is DataStateFixed) {
        if (data != null && !(await _storeFlowableResponder.needRefresh(data))) {
          yield data;
        } else {
          throw const NoSuchElementException();
        }
      } else if (dataState is DataStateLoading) {
        //do nothing.
      } else if (dataState is DataStateError) {
        if (data != null && !(await _storeFlowableResponder.needRefresh(data))) {
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
  Future<void> requestAddition({final bool continueWhenError = true}) async {
    await _dataSelector.doStateAction(forceRefresh: false, clearCacheBeforeFetching: false, clearCacheWhenFetchFails: false, continueWhenError: continueWhenError, awaitFetching: true, additionalRequest: true);
  }

  @override
  Future<void> update(final List<DATA>? newData) async {
    await _dataSelector.update(newData);
  }
}
