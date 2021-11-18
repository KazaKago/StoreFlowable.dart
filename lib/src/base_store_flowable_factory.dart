import 'package:store_flowable/src/flowable_data_state_manager.dart';

abstract class BaseStoreFlowableFactory<PARAM, DATA> {
  FlowableDataStateManager<PARAM> getFlowableDataStateManager();

  Future<DATA?> loadDataFromCache(final PARAM param);

  Future<void> saveDataToCache(final DATA? newData, final PARAM param);

  Future<bool> needRefresh(final DATA cachedData, final PARAM param);
}
