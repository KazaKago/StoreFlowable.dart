import 'package:store_flowable/data_state.dart';
import 'package:store_flowable/paging/paging_cache_data_manager.dart';
import 'package:store_flowable/paging/paging_origin_data_manager.dart';
import 'package:store_flowable/src/data_state_manager.dart';

class PagingDataSelector<KEY, DATA> {
  const PagingDataSelector(this._key, this._dataStateManager, this._cacheDataManager, this._originDataManager, this._needRefresh);

  final KEY _key;
  final DataStateManager<KEY> _dataStateManager;
  final PagingCacheDataManager<DATA> _cacheDataManager;
  final PagingOriginDataManager<DATA> _originDataManager;
  final Future<bool> Function(List<DATA> data) _needRefresh;

  Future<List<DATA>?> load() {
    return _cacheDataManager.loadData();
  }

  Future<void> update(final List<DATA>? newData) async {
    await _cacheDataManager.saveData(newData, additionalRequest: false);
    _dataStateManager.saveState(_key, const DataState.fixed(isReachLast: false));
  }

  Future<void> doStateAction({required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool continueWhenError, required final bool awaitFetching, required final bool additionalRequest}) async {
    final data = await _cacheDataManager.loadData();
    final state = _dataStateManager.loadState(_key);
    return state.when(
      fixed: (state) => _doDataAction(data: data, forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching, additionalRequest: additionalRequest, currentIsReachLast: state.isReachLast),
      loading: (state) {},
      error: (state) => {if (continueWhenError) _doDataAction(data: data, forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching, additionalRequest: additionalRequest, currentIsReachLast: false)},
    );
  }

  Future<void> _doDataAction({required final List<DATA>? data, required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool awaitFetching, required final bool additionalRequest, required final bool currentIsReachLast}) async {
    if (data == null || forceRefresh || await _needRefresh(data) || (additionalRequest && !currentIsReachLast)) {
      await _prepareFetch(data: data, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching, additionalRequest: additionalRequest);
    }
  }

  Future<void> _prepareFetch({required final List<DATA>? data, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool awaitFetching, required final bool additionalRequest}) async {
    if (clearCacheBeforeFetching) await _cacheDataManager.saveData(null, additionalRequest: additionalRequest);
    _dataStateManager.saveState(_key, const DataState.loading());
    if (awaitFetching) {
      await _fetchNewData(data: data, clearCacheWhenFetchFails: clearCacheWhenFetchFails, additionalRequest: additionalRequest);
    } else {
      // ignore: unawaited_futures
      _fetchNewData(data: data, clearCacheWhenFetchFails: clearCacheWhenFetchFails, additionalRequest: additionalRequest);
    }
  }

  Future<void> _fetchNewData({required final List<DATA>? data, required final bool clearCacheWhenFetchFails, required final bool additionalRequest}) async {
    try {
      final fetchedData = await _originDataManager.fetchOrigin(data, additionalRequest: additionalRequest);
      final mergedData = additionalRequest ? (data ?? []) + fetchedData : fetchedData;
      await _cacheDataManager.saveData(mergedData, additionalRequest: additionalRequest);
      final isReachLast = fetchedData.isEmpty;
      _dataStateManager.saveState(_key, DataState.fixed(isReachLast: isReachLast));
    } on Exception catch (exception) {
      if (clearCacheWhenFetchFails) await _cacheDataManager.saveData(null, additionalRequest: additionalRequest);
      _dataStateManager.saveState(_key, DataState.error(exception));
    }
  }
}
