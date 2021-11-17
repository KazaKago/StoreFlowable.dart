import 'package:store_flowable/src/base_store_flowable_factory.dart';
import 'package:store_flowable/src/pagination/oneway/fetched.dart';

abstract class PaginationStoreFlowableFactory<KEY, DATA, PARAM> implements BaseStoreFlowableFactory<KEY, DATA, PARAM> {
  Future<void> saveNextDataToCache(final DATA cachedData, final DATA newData, final PARAM param);

  Future<Fetched<DATA>> fetchDataFromOrigin(final PARAM param);

  Future<Fetched<DATA>> fetchNextDataFromOrigin(final String nextKey, final PARAM param);
}
