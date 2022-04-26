import 'package:store_flowable/src/base_store_flowable_factory.dart';
import 'package:store_flowable/src/pagination/oneway/fetched.dart';

abstract class PaginationStoreFlowableFactory<PARAM, DATA> implements BaseStoreFlowableFactory<PARAM, DATA> {
  Future<void> saveNextDataToCache(DATA cachedData, DATA newData, PARAM param);

  Future<Fetched<DATA>> fetchDataFromOrigin(PARAM param);

  Future<Fetched<DATA>> fetchNextDataFromOrigin(String nextKey, PARAM param);
}
