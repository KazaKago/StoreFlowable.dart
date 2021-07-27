import 'package:store_flowable/src/origin/internal_fetched.dart';

abstract class OriginDataManager<DATA> {
  Future<InternalFetched<DATA>> fetch();

  Future<InternalFetched<DATA>> fetchNext(final String nextKey);

  Future<InternalFetched<DATA>> fetchPrev(final String prevKey);
}
