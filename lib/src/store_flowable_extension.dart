import 'package:store_flowable/src/cache/any_cache_data_manager.dart';
import 'package:store_flowable/src/logic/store_flowable_impl.dart';
import 'package:store_flowable/src/origin/any_origin_data_manager.dart';
import 'package:store_flowable/src/origin/internal_fetched.dart';
import 'package:store_flowable/src/store_flowable.dart';
import 'package:store_flowable/src/store_flowable_factory.dart';

extension StoreFlowableExtension<KEY, DATA> on StoreFlowableFactory<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  StoreFlowable<KEY, DATA> create() {
    return StoreFlowableImpl(
      key: getKey(),
      flowableDataStateManager: getFlowableDataStateManager(),
      cacheDataManager: AnyCacheDataManager(
        loadFunc: loadDataFromCache,
        saveFunc: saveDataToCache,
        saveNextFunc: (cachedData, newData) => throw UnimplementedError(),
        savePrevFunc: (cachedData, newData) => throw UnimplementedError(),
      ),
      originDataManager: AnyOriginDataManager(
        fetchFunc: () async {
          final data = await fetchDataFromOrigin();
          return InternalFetched(data: data, nextKey: null, prevKey: null);
        },
        fetchNextFunc: (nextKey) => throw UnimplementedError(),
        fetchPrevFunc: (prevKey) => throw UnimplementedError(),
      ),
      needRefresh: needRefresh,
    );
  }
}
