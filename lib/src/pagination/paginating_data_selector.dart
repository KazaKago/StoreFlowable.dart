import 'package:store_flowable/src/data_state.dart';
import 'package:store_flowable/src/data_state_manager.dart';
import 'package:store_flowable/src/fetching_result.dart';
import 'package:store_flowable/src/pagination/paginating_cache_data_manager.dart';
import 'package:store_flowable/src/pagination/paginating_origin_data_manager.dart';

class PaginatingDataSelector<KEY, DATA> {
  const PaginatingDataSelector(this._key, this._dataStateManager, this._cacheDataManager, this._originDataManager, this._needRefresh);

  final KEY _key;
  final DataStateManager<KEY> _dataStateManager;
  final PaginatingCacheDataManager<DATA> _cacheDataManager;
  final PaginatingOriginDataManager<DATA> _originDataManager;
  final Future<bool> Function(DATA cachedData) _needRefresh;

  Future<DATA?> load() {
    return _cacheDataManager.loadDataFromCache();
  }

  Future<void> update(final DATA? newData) async {
    await _cacheDataManager.saveDataToCache(newData);
    _dataStateManager.saveState(_key, const DataState.fixed(noMoreAdditionalData: false));
  }

  Future<void> doStateAction({required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool continueWhenError, required final bool awaitFetching, required final bool additionalRequest}) async {
    final state = _dataStateManager.loadState(_key);
    return state.when(
      fixed: (state) => _doDataAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching, additionalRequest: additionalRequest, noMoreAdditionalData: state.noMoreAdditionalData),
      loading: (state) {},
      error: (state) => {if (continueWhenError) _doDataAction(forceRefresh: forceRefresh, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching, additionalRequest: additionalRequest, noMoreAdditionalData: false)},
    );
  }

  Future<void> _doDataAction({required final bool forceRefresh, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool awaitFetching, required final bool additionalRequest, required final bool noMoreAdditionalData}) async {
    final cachedData = await _cacheDataManager.loadDataFromCache();
    if (cachedData == null || forceRefresh || (!additionalRequest && await _needRefresh(cachedData)) || (additionalRequest && !noMoreAdditionalData)) {
      await _prepareFetch(cachedData: cachedData, clearCacheBeforeFetching: clearCacheBeforeFetching, clearCacheWhenFetchFails: clearCacheWhenFetchFails, awaitFetching: awaitFetching, additionalRequest: additionalRequest);
    }
  }

  Future<void> _prepareFetch({required final DATA? cachedData, required final bool clearCacheBeforeFetching, required final bool clearCacheWhenFetchFails, required final bool awaitFetching, required final bool additionalRequest}) async {
    if (clearCacheBeforeFetching) await _cacheDataManager.saveDataToCache(null);
    _dataStateManager.saveState(_key, const DataState.loading());
    if (awaitFetching) {
      await _fetchNewData(cachedData: cachedData, clearCacheWhenFetchFails: clearCacheWhenFetchFails, additionalRequest: additionalRequest);
    } else {
      // ignore: unawaited_futures
      _fetchNewData(cachedData: cachedData, clearCacheWhenFetchFails: clearCacheWhenFetchFails, additionalRequest: additionalRequest);
    }
  }

  Future<void> _fetchNewData({required final DATA? cachedData, required final bool clearCacheWhenFetchFails, required final bool additionalRequest}) async {
    try {
      final FetchingResult<DATA> fetchingResult;
      if (additionalRequest) {
        fetchingResult = await _originDataManager.fetchAdditionalDataFromOrigin(cachedData);
      } else {
        fetchingResult = await _originDataManager.fetchDataFromOrigin();
      }
      if (additionalRequest) {
        await _cacheDataManager.saveAdditionalDataToCache(cachedData, fetchingResult.data);
      } else {
        await _cacheDataManager.saveDataToCache(fetchingResult.data);
      }
      _dataStateManager.saveState(_key, DataState.fixed(noMoreAdditionalData: fetchingResult.noMoreAdditionalData));
    } on Exception catch (exception) {
      if (clearCacheWhenFetchFails) await _cacheDataManager.saveDataToCache(null);
      _dataStateManager.saveState(_key, DataState.error(exception));
    }
  }
}
