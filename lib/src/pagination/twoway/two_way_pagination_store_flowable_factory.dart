import 'package:store_flowable/src/base_store_flowable_factory.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_initial.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_next.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_prev.dart';

abstract class TwoWayPaginationStoreFlowableFactory<PARAM, DATA> implements BaseStoreFlowableFactory<PARAM, DATA> {
  Future<void> saveNextDataToCache(final DATA cachedData, final DATA newData, final PARAM param);

  Future<void> savePrevDataToCache(final DATA cachedData, final DATA newData, final PARAM param);

  Future<FetchedInitial<DATA>> fetchDataFromOrigin(final PARAM param);

  Future<FetchedNext<DATA>> fetchNextDataFromOrigin(final String nextKey, final PARAM param);

  Future<FetchedPrev<DATA>> fetchPrevDataFromOrigin(final String prevKey, final PARAM param);
}
