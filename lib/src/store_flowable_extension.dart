import 'package:store_flowable/src/cache/any_cache_data_manager.dart';
import 'package:store_flowable/src/logic/store_flowable_impl.dart';
import 'package:store_flowable/src/origin/any_origin_data_manager.dart';
import 'package:store_flowable/src/origin/internal_fetched.dart';
import 'package:store_flowable/src/store_flowable.dart';
import 'package:store_flowable/src/store_flowable_factory.dart';

extension StoreFlowableExtension<PARAM, DATA> on StoreFlowableFactory<PARAM, DATA> {
  // ignore: use_to_and_as_if_applicable
  StoreFlowable<PARAM, DATA> create(final PARAM param) {
    return StoreFlowableImpl(
      key: param,
      flowableDataStateManager: getFlowableDataStateManager(),
      cacheDataManager: AnyCacheDataManager(
        loadFunc: () => loadDataFromCache(param),
        saveFunc: (newData) => saveDataToCache(newData, param),
        saveNextFunc: (cachedData, newData) => throw UnimplementedError(),
        savePrevFunc: (cachedData, newData) => throw UnimplementedError(),
      ),
      originDataManager: AnyOriginDataManager(
        fetchFunc: () async {
          final data = await fetchDataFromOrigin(param);
          return InternalFetched(data: data, nextKey: null, prevKey: null);
        },
        fetchNextFunc: (nextKey) => throw UnimplementedError(),
        fetchPrevFunc: (prevKey) => throw UnimplementedError(),
      ),
      needRefresh: (cachedData) => needRefresh(cachedData, param),
    );
  }
}
