import 'package:store_flowable/src/cache_data_manager.dart';
import 'package:store_flowable/src/flowable_data_state_manager.dart';
import 'package:store_flowable/src/origin_data_manager.dart';

abstract class StoreFlowableCallback<KEY, DATA> implements CacheDataManager<DATA>, OriginDataManager<DATA> {
  KEY getKey();

  FlowableDataStateManager<KEY> getFlowableDataStateManager();

  Future<bool> needRefresh(final DATA cachedData);
}
