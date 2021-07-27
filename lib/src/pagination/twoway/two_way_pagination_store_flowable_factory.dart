import 'package:store_flowable/src/base_store_flowable_factory.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_initial.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_next.dart';
import 'package:store_flowable/src/pagination/twoway/fetched_prev.dart';

abstract class TwoWayPaginationStoreFlowableFactory<KEY, DATA> implements BaseStoreFlowableFactory<KEY, DATA> {
  Future<void> saveNextDataToCache(final DATA cachedData, final DATA newData);

  Future<void> savePrevDataToCache(final DATA cachedData, final DATA newData);

  Future<FetchedInitial<DATA>> fetchDataFromOrigin();

  Future<FetchedNext<DATA>> fetchNextDataFromOrigin(final String nextKey);

  Future<FetchedPrev<DATA>> fetchPrevDataFromOrigin(final String prevKey);
}
