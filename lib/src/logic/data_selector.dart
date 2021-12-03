import 'package:store_flowable/src/cache/cache_data_manager.dart';
import 'package:store_flowable/src/datastate/additional_data_state.dart';
import 'package:store_flowable/src/datastate/data_state.dart';
import 'package:store_flowable/src/datastate/data_state_manager.dart';
import 'package:store_flowable/src/exception/additional_request_on_error_state_exception.dart';
import 'package:store_flowable/src/exception/additional_request_on_null_exception.dart';
import 'package:store_flowable/src/logic/keyed_request_type.dart';
import 'package:store_flowable/src/logic/request_type.dart';
import 'package:store_flowable/src/logic/string_utils.dart';
import 'package:store_flowable/src/origin/origin_data_manager.dart';

class DataSelector<PARAM, DATA> {
  const DataSelector(this._param, this._dataStateManager, this._cacheDataManager, this._originDataManager, this._needRefresh);

  final PARAM _param;
  final DataStateManager<PARAM> _dataStateManager;
  final CacheDataManager<DATA> _cacheDataManager;
  final OriginDataManager<DATA> _originDataManager;
  final Future<bool> Function(DATA cachedData) _needRefresh;

  Future<DATA?> loadValidCacheOrNull() async {
    final data = await _cacheDataManager.load();
    return (data != null && !await _needRefresh(data)) ? data : null;
  }

  Future<void> update(final DATA? newData, final String? nextKey, final String? prevKey) async {
    await _cacheDataManager.save(newData);
    final AdditionalDataState nextDataState;
    if (nextKey != null) {
      nextDataState = AdditionalDataState.fixed(additionalRequestKey: nextKey);
    } else {
      final state = _dataStateManager.load(_param);
      final nextKey = state.nextKeyOrNull();
      if (nextKey != null) {
        nextDataState = AdditionalDataState.fixed(additionalRequestKey: nextKey);
      } else {
        nextDataState = const AdditionalDataState.fixedWithNoMoreAdditionalData();
      }
    }
    final AdditionalDataState prevDataState;
    if (prevKey != null) {
      prevDataState = AdditionalDataState.fixed(additionalRequestKey: prevKey);
    } else {
      final state = _dataStateManager.load(_param);
      final prevKey = state.prevKeyOrNull();
      if (prevKey != null) {
        prevDataState = AdditionalDataState.fixed(additionalRequestKey: prevKey);
      } else {
        prevDataState = const AdditionalDataState.fixedWithNoMoreAdditionalData();
      }
    }
    _dataStateManager.save(_param, DataState.fixed(nextDataState: nextDataState, prevDataState: prevDataState, isInitial: false));
  }

  Future<void> validate() async {
    await _doStateAction(forceRefresh: false, clearCacheBeforeFetching: true, clearCacheWhenFetchFails: true, continueWhenError: true, requestType: RequestType.refresh);
  }

  Future<void> refresh({required final bool clearCacheBeforeFetching}) async {
    await _doStateAction(forceRefresh: true, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: true, continueWhenError: true, requestType: RequestType.refresh);
  }

  Future<void> requestNextData({required final bool continueWhenError}) async {
    await _doStateAction(forceRefresh: false, clearCacheBeforeFetching: false, clearCacheWhenFetchFails: false, continueWhenError: continueWhenError, requestType: RequestType.next);
  }

  Future<void> requestPrevData({required final bool continueWhenError}) async {
    await _doStateAction(forceRefresh: false, clearCacheBeforeFetching: false, clearCacheWhenFetchFails: false, continueWhenError: continueWhenError, requestType: RequestType.prev);
  }

  Future<void> _doStateAction({required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool continueWhenError, required final RequestType requestType}) async {
    await _dataStateManager.load(_param).when(
          fixed: (nextDataState, prevDataState, isInitial) async {
            switch (requestType) {
              case RequestType.refresh:
                if (nextDataState is! AdditionalDataStateLoading && prevDataState is! AdditionalDataStateLoading) {
                  await _doDataAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: const KeyedRequestType.refresh());
                }
                break;
              case RequestType.next:
                await nextDataState.when(
                  fixed: (additionalRequestKey) async {
                    await _doDataAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: KeyedRequestType.next(additionalRequestKey));
                  },
                  fixedWithNoMoreAdditionalData: () async {},
                  loading: (additionalRequestKey) async {},
                  error: (additionalRequestKey, exception) async {
                    if (continueWhenError) await _doDataAction(forceRefresh: true, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: KeyedRequestType.next(additionalRequestKey));
                  },
                );
                break;
              case RequestType.prev:
                await prevDataState.when(
                  fixed: (additionalRequestKey) async {
                    await _doDataAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: KeyedRequestType.prev(additionalRequestKey));
                  },
                  fixedWithNoMoreAdditionalData: () async {},
                  loading: (additionalRequestKey) async {},
                  error: (additionalRequestKey, exception) async {
                    if (continueWhenError) await _doDataAction(forceRefresh: true, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: KeyedRequestType.prev(additionalRequestKey));
                  },
                );
                break;
            }
          },
          loading: () async {},
          error: (exception) async {
            switch (requestType) {
              case RequestType.refresh:
                if (continueWhenError) await _doDataAction(forceRefresh: true, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: const KeyedRequestType.refresh());
                break;
              case RequestType.next:
              case RequestType.prev:
                _dataStateManager.save(_param, const DataState.error(exception: AdditionalRequestOnErrorStateException()));
                break;
            }
          },
        );
  }

  Future<void> _doDataAction({required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final KeyedRequestType requestType}) async {
    final cachedData = await _cacheDataManager.load();
    await requestType.when(
      refresh: () async {
        if (cachedData == null || forceRefresh || await _needRefresh(cachedData)) {
          await _prepareFetch(clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: requestType);
        }
      },
      next: (requestKey) async {
        if (cachedData != null) {
          await _prepareFetch(clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: requestType);
        } else {
          _dataStateManager.save(_param, const DataState.error(exception: AdditionalRequestOnNullException()));
        }
      },
      prev: (requestKey) async {
        if (cachedData != null) {
          await _prepareFetch(clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: requestType);
        } else {
          _dataStateManager.save(_param, const DataState.error(exception: AdditionalRequestOnNullException()));
        }
      },
    );
  }

  Future<void> _prepareFetch({required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final KeyedRequestType requestType}) async {
    if (clearCacheBeforeFetching) await _cacheDataManager.save(null);
    final state = _dataStateManager.load(_param);
    requestType.when(
      refresh: () => _dataStateManager.save(_param, const DataState.loading()),
      next: (requestKey) => _dataStateManager.save(_param, DataState.fixed(nextDataState: AdditionalDataState.loading(additionalRequestKey: requestKey), prevDataState: state.prevDataStateOrNull(), isInitial: false)),
      prev: (requestKey) => _dataStateManager.save(_param, DataState.fixed(nextDataState: state.nextDataStateOrNull(), prevDataState: AdditionalDataState.loading(additionalRequestKey: requestKey), isInitial: false)),
    );
    await _fetchNewData(clearCacheWhenFetchFails: clearCacheWhenFetchFails, requestType: requestType);
  }

  Future<void> _fetchNewData({required final bool clearCacheWhenFetchFails, required final KeyedRequestType requestType}) async {
    try {
      final result = await requestType.when(
        refresh: () async => _originDataManager.fetch(),
        next: (requestKey) async => _originDataManager.fetchNext(requestKey),
        prev: (requestKey) async => _originDataManager.fetchPrev(requestKey),
      );
      await requestType.when(
        refresh: () async {
          await _cacheDataManager.save(result.data);
        },
        next: (requestKey) async {
          final cachedData = await _cacheDataManager.load();
          if (cachedData == null) throw const AdditionalRequestOnNullException();
          await _cacheDataManager.saveNext(cachedData, result.data);
        },
        prev: (requestKey) async {
          final cachedData = await _cacheDataManager.load();
          if (cachedData == null) throw const AdditionalRequestOnNullException();
          await _cacheDataManager.savePrev(cachedData, result.data);
        },
      );
      final state = _dataStateManager.load(_param);
      requestType.when(
        refresh: () => _dataStateManager.save(_param, DataState.fixed(nextDataState: (result.nextKey.isNullOrEmpty()) ? const AdditionalDataState.fixedWithNoMoreAdditionalData() : AdditionalDataState.fixed(additionalRequestKey: result.nextKey!), prevDataState: (result.prevKey.isNullOrEmpty()) ? const AdditionalDataState.fixedWithNoMoreAdditionalData() : AdditionalDataState.fixed(additionalRequestKey: result.prevKey!), isInitial: false)),
        next: (requestKey) => _dataStateManager.save(_param, DataState.fixed(nextDataState: (result.nextKey.isNullOrEmpty()) ? const AdditionalDataState.fixedWithNoMoreAdditionalData() : AdditionalDataState.fixed(additionalRequestKey: result.nextKey!), prevDataState: state.prevDataStateOrNull(), isInitial: false)),
        prev: (requestKey) => _dataStateManager.save(_param, DataState.fixed(nextDataState: state.nextDataStateOrNull(), prevDataState: (result.prevKey.isNullOrEmpty()) ? const AdditionalDataState.fixedWithNoMoreAdditionalData() : AdditionalDataState.fixed(additionalRequestKey: result.prevKey!), isInitial: false)),
      );
    } on Exception catch (exception) {
      if (clearCacheWhenFetchFails) await _cacheDataManager.save(null);
      final state = _dataStateManager.load(_param);
      requestType.when(
        refresh: () => _dataStateManager.save(_param, DataState.error(exception: exception)),
        next: (requestKey) => _dataStateManager.save(_param, DataState.fixed(nextDataState: AdditionalDataState.error(additionalRequestKey: requestKey, exception: exception), prevDataState: state.prevDataStateOrNull(), isInitial: false)),
        prev: (requestKey) => _dataStateManager.save(_param, DataState.fixed(nextDataState: state.nextDataStateOrNull(), prevDataState: AdditionalDataState.error(additionalRequestKey: requestKey, exception: exception), isInitial: false)),
      );
    }
  }
}
