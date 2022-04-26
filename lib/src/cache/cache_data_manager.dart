abstract class CacheDataManager<DATA> {
  Future<DATA?> load();

  Future<void> save(DATA? newData);

  Future<void> saveNext(DATA cachedData, DATA newData);

  Future<void> savePrev(DATA cachedData, DATA newData);
}
