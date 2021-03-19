abstract class PagingCacheDataManager<DATA> {
  Future<List<DATA>?> loadData();

  Future<void> saveData(final List<DATA>? data, {required final bool additionalRequest});
}
