import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/core/no_such_element_exception.dart';
import 'package:store_flowable/src/core/state.dart';
import 'package:store_flowable/src/core/state_content.dart';
import 'package:store_flowable/src/data_selector.dart';
import 'package:store_flowable/src/data_state.dart';
import 'package:store_flowable/src/data_state_mapper.dart';
import 'package:store_flowable/src/getting_from.dart';
import 'package:store_flowable/src/store_flowable.dart';
import 'package:store_flowable/src/store_flowable_callback.dart';

class StoreFlowableImpl<KEY, DATA> implements StoreFlowable<KEY, DATA> {
  factory StoreFlowableImpl(final StoreFlowableCallback<KEY, DATA> storeFlowableResponder) {
    final dataSelector = DataSelector<KEY, DATA>(
      storeFlowableResponder.getKey(),
      storeFlowableResponder.getFlowableDataStateManager(),
      storeFlowableResponder,
      storeFlowableResponder,
      storeFlowableResponder.needRefresh,
    );
    return StoreFlowableImpl._(storeFlowableResponder, dataSelector);
  }

  const StoreFlowableImpl._(this._storeFlowableCallback, this._dataSelector);

  final StoreFlowableCallback<KEY, DATA> _storeFlowableCallback;
  final DataSelector<KEY, DATA> _dataSelector;

  @override
  Stream<State<DATA>> publish({final bool forceRefresh = false}) {
    return _storeFlowableCallback.getFlowableDataStateManager().getFlow(_storeFlowableCallback.getKey()).doOnListen(() {
      _dataSelector.doStateAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: false);
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
        await _dataSelector.doStateAction(forceRefresh: false, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true);
        break;
      case GettingFrom.origin:
        await _dataSelector.doStateAction(forceRefresh: true, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true);
        break;
      case GettingFrom.cache:
        //do nothing.
        break;
    }
    return _storeFlowableCallback.getFlowableDataStateManager().getFlow(_storeFlowableCallback.getKey()).asyncExpand((dataState) async* {
      final data = await _dataSelector.load();
      if (dataState is DataStateFixed) {
        if (data != null && !(await _storeFlowableCallback.needRefresh(data))) {
          yield data;
        } else {
          throw const NoSuchElementException();
        }
      } else if (dataState is DataStateLoading) {
        //do nothing.
      } else if (dataState is DataStateError) {
        if (data != null && !(await _storeFlowableCallback.needRefresh(data))) {
          yield data;
        } else {
          throw dataState.exception;
        }
      }
    }).first;
  }

  @override
  Future<void> validate() async {
    await _dataSelector.doStateAction(forceRefresh: false, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, awaitFetching: true);
  }

  @override
  Future<void> refresh({final bool clearCacheWhenFetchFails = true, final bool continueWhenError = true}) async {
    await _dataSelector.doStateAction(forceRefresh: true, clearCacheBeforeFetching: false, clearCacheWhenFetchFails: clearCacheWhenFetchFails, continueWhenError: continueWhenError, awaitFetching: true);
  }

  @override
  Future<void> update(final DATA? newData) async {
    await _dataSelector.update(newData);
  }
}
