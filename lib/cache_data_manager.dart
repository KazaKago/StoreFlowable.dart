abstract class CacheDataManager<DATA> {
  Future<DATA?> loadData();

  Future<void> saveData(final DATA? data);
}
