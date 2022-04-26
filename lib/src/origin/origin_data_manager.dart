import 'package:store_flowable/src/origin/internal_fetched.dart';

abstract class OriginDataManager<DATA> {
  Future<InternalFetched<DATA>> fetch();

  Future<InternalFetched<DATA>> fetchNext(String nextKey);

  Future<InternalFetched<DATA>> fetchPrev(String prevKey);
}
