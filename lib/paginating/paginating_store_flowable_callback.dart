import 'package:store_flowable/flowable_data_state_manager.dart';
import 'package:store_flowable/paginating/paginating_cache_data_manager.dart';
import 'package:store_flowable/paginating/paginating_origin_data_manager.dart';

abstract class PaginatingStoreFlowableCallback<KEY, DATA> implements PaginatingCacheDataManager<DATA>, PaginatingOriginDataManager<DATA> {
  KEY getKey();

  FlowableDataStateManager<KEY> getFlowableDataStateManager();

  Future<bool> needRefresh(final DATA cachedData);
}
