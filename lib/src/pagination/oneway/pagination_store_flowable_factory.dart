import 'package:store_flowable/src/base_store_flowable_factory.dart';
import 'package:store_flowable/src/pagination/oneway/fetched.dart';

abstract class PaginationStoreFlowableFactory<KEY, DATA> implements BaseStoreFlowableFactory<KEY, DATA> {
  Future<void> saveNextDataToCache(final DATA cachedData, final DATA newData);

  Future<Fetched<DATA>> fetchDataFromOrigin();

  Future<Fetched<DATA>> fetchNextDataFromOrigin(final String nextKey);
}
