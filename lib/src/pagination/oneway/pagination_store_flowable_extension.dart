import 'package:store_flowable/src/cache/any_cache_data_manager.dart';
import 'package:store_flowable/src/logic/store_flowable_impl.dart';
import 'package:store_flowable/src/origin/any_origin_data_manager.dart';
import 'package:store_flowable/src/origin/internal_fetched.dart';
import 'package:store_flowable/src/pagination/oneway/pagination_store_flowable.dart';
import 'package:store_flowable/src/pagination/oneway/pagination_store_flowable_factory.dart';

extension PaginatingStoreFlowableExtension<KEY, DATA> on PaginationStoreFlowableFactory<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  PaginationStoreFlowable<KEY, DATA> create() {
    return StoreFlowableImpl(
      key: getKey(),
      flowableDataStateManager: getFlowableDataStateManager(),
      cacheDataManager: AnyCacheDataManager(
        loadFunc: loadDataFromCache,
        saveFunc: saveDataToCache,
        saveNextFunc: saveNextDataToCache,
        savePrevFunc: (cachedData, newData) => throw UnimplementedError(),
      ),
      originDataManager: AnyOriginDataManager(
        fetchFunc: () async {
          final result = await fetchDataFromOrigin();
          return InternalFetched(data: result.data, nextKey: result.nextKey, prevKey: null);
        },
        fetchNextFunc: (nextKey) async {
          final result = await fetchNextDataFromOrigin(nextKey);
          return InternalFetched(data: result.data, nextKey: result.nextKey, prevKey: null);
        },
        fetchPrevFunc: (prevKey) => throw UnimplementedError(),
      ),
      needRefresh: needRefresh,
    );
  }
}
