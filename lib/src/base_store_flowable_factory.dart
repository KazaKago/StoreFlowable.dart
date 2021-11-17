import 'package:store_flowable/src/flowable_data_state_manager.dart';

abstract class BaseStoreFlowableFactory<KEY, DATA, PARAM> {
  KEY getKey(final PARAM param);

  FlowableDataStateManager<KEY> getFlowableDataStateManager(final PARAM param);

  Future<DATA?> loadDataFromCache(final PARAM param);

  Future<void> saveDataToCache(final DATA? newData, final PARAM param);

  Future<bool> needRefresh(final DATA cachedData, final PARAM param);
}
