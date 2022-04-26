import 'package:store_flowable/src/flowable_data_state_manager.dart';

abstract class BaseStoreFlowableFactory<PARAM, DATA> {
  FlowableDataStateManager<PARAM> getFlowableDataStateManager();

  Future<DATA?> loadDataFromCache(PARAM param);

  Future<void> saveDataToCache(DATA? newData, PARAM param);

  Future<bool> needRefresh(DATA cachedData, PARAM param);
}
