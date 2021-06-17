abstract class CacheDataManager<DATA> {
  Future<DATA?> loadDataFromCache();

  Future<void> saveDataToCache(final DATA? newData);
}
