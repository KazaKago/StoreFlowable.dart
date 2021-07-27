import 'package:store_flowable/src/flowable_data_state_manager.dart';

abstract class BaseStoreFlowableFactory<KEY, DATA> {
  KEY getKey();

  FlowableDataStateManager<KEY> getFlowableDataStateManager();

  Future<DATA?> loadDataFromCache();

  Future<void> saveDataToCache(final DATA? newData);

  Future<bool> needRefresh(final DATA cachedData);
}
