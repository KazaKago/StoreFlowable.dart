abstract class CacheDataManager<DATA> {
  Future<DATA?> load();

  Future<void> save(final DATA? newData);

  Future<void> saveNext(final DATA cachedData, final DATA newData);

  Future<void> savePrev(final DATA cachedData, final DATA newData);
}
