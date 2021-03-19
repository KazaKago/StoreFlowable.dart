abstract class PagingOriginDataManager<DATA> {
  Future<List<DATA>> fetchOrigin(final List<DATA>? data, {required final bool additionalRequest});
}
