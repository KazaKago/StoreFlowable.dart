import 'package:store_flowable/src/cache/any_cache_data_manager.dart';
import 'package:store_flowable/src/logic/store_flowable_impl.dart';
import 'package:store_flowable/src/origin/any_origin_data_manager.dart';
import 'package:store_flowable/src/origin/internal_fetched.dart';
import 'package:store_flowable/src/pagination/twoway/two_way_pagination_store_flowable.dart';
import 'package:store_flowable/src/pagination/twoway/two_way_pagination_store_flowable_factory.dart';

extension TwoWayPaginatingStoreFlowableExtension<PARAM, DATA> on TwoWayPaginationStoreFlowableFactory<PARAM, DATA> {
  // ignore: use_to_and_as_if_applicable
  TwoWayPaginationStoreFlowable<PARAM, DATA> create(final PARAM param) {
    return StoreFlowableImpl(
      param: param,
      flowableDataStateManager: getFlowableDataStateManager(),
      cacheDataManager: AnyCacheDataManager(
        loadFunc: () => loadDataFromCache(param),
        saveFunc: (newData) => saveDataToCache(newData, param),
        saveNextFunc: (cachedData, newData) => saveNextDataToCache(cachedData, newData, param),
        savePrevFunc: (cachedData, newData) => savePrevDataToCache(cachedData, newData, param),
      ),
      originDataManager: AnyOriginDataManager(
        fetchFunc: () async {
          final result = await fetchDataFromOrigin(param);
          return InternalFetched(data: result.data, nextKey: result.nextKey, prevKey: result.prevKey);
        },
        fetchNextFunc: (nextKey) async {
          final result = await fetchNextDataFromOrigin(nextKey, param);
          return InternalFetched(data: result.data, nextKey: result.nextKey, prevKey: null);
        },
        fetchPrevFunc: (prevKey) async {
          final result = await fetchPrevDataFromOrigin(prevKey, param);
          return InternalFetched(data: result.data, nextKey: null, prevKey: result.prevKey);
        },
      ),
      needRefresh: (cachedData) => needRefresh(cachedData, param),
    );
  }
}
