import 'package:store_flowable/src/base_store_flowable_factory.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_initial.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_next.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_prev.dart';

abstract class TwoWayPaginationStoreFlowableFactory<PARAM, DATA> implements BaseStoreFlowableFactory<PARAM, DATA> {
  Future<void> saveNextDataToCache(DATA cachedData, DATA newData, PARAM param);

  Future<void> savePrevDataToCache(DATA cachedData, DATA newData, PARAM param);

  Future<FetchedInitial<DATA>> fetchDataFromOrigin(PARAM param);

  Future<FetchedNext<DATA>> fetchNextDataFromOrigin(String nextKey, PARAM param);

  Future<FetchedPrev<DATA>> fetchPrevDataFromOrigin(String prevKey, PARAM param);
}
