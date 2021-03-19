import 'package:store_flowable/cache_data_manager.dart';
import 'package:store_flowable/flowable_data_state_manager.dart';
import 'package:store_flowable/origin_data_manager.dart';

abstract class StoreFlowableResponder<KEY, DATA> implements CacheDataManager<DATA>, OriginDataManager<DATA> {
  KEY getKey();

  FlowableDataStateManager<KEY> getFlowableDataStateManager();

  @override
  Future<DATA?> loadData();

  @override
  Future<void> saveData(final DATA? data);

  @override
  Future<DATA> fetchOrigin();

  Future<bool> needRefresh(final DATA data);
}
