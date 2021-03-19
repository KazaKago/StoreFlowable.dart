import 'package:store_flowable/cache_data_manager.dart';
import 'package:store_flowable/data_state.dart';
import 'package:store_flowable/origin_data_manager.dart';
import 'package:store_flowable/src/data_state_manager.dart';

class DataSelector<KEY, DATA> {
  const DataSelector(this._key, this._dataStateManager, this._cacheDataManager, this._originDataManager, this._needRefresh);

  final KEY _key;
  final DataStateManager<KEY> _dataStateManager;
  final CacheDataManager<DATA> _cacheDataManager;
  final OriginDataManager<DATA> _originDataManager;
  final Future<bool> Function(DATA data) _needRefresh;

  Future<DATA?> load() {
    return _cacheDataManager.loadData();
  }

  Future<void> update(final DATA? newData) async {
    await _cacheDataManager.saveData(newData);
    _dataStateManager.saveState(_key, const DataState.fixed(isReachLast: false));
  }

  Future<void> doStateAction({required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool continueWhenError, required final bool awaitFetching}) async {
    final state = _dataStateManager.loadState(_key);
    return state.when(
      fixed: (state) => _doDataAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching),
      loading: (state) {},
      error: (state) => {if (continueWhenError) _doDataAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching)},
    );
  }

  Future<void> _doDataAction({required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool awaitFetching}) async {
    final data = await _cacheDataManager.loadData();
    if (data == null || forceRefresh || await _needRefresh(data)) {
      await _prepareFetch(clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching);
    }
  }

  Future<void> _prepareFetch({required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool awaitFetching}) async {
    if (clearCacheBeforeFetching) await _cacheDataManager.saveData(null);
    _dataStateManager.saveState(_key, const DataState.loading());
    if (awaitFetching) {
      await _fetchNewData(clearCacheWhenFetchFails: clearCacheWhenFetchFails);
    } else {
      // ignore: unawaited_futures
      _fetchNewData(clearCacheWhenFetchFails: clearCacheWhenFetchFails);
    }
  }

  Future<void> _fetchNewData({required final bool clearCacheWhenFetchFails}) async {
    try {
      final fetchedData = await _originDataManager.fetchOrigin();
      await _cacheDataManager.saveData(fetchedData);
      _dataStateManager.saveState(_key, const DataState.fixed(isReachLast: false));
    } on Exception catch (exception) {
      if (clearCacheWhenFetchFails) await _cacheDataManager.saveData(null);
      _dataStateManager.saveState(_key, DataState.error(exception));
    }
  }
}
