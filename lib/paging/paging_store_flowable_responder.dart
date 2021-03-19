import 'package:store_flowable/flowable_data_state_manager.dart';
import 'package:store_flowable/paging/paging_cache_data_manager.dart';
import 'package:store_flowable/paging/paging_origin_data_manager.dart';

abstract class PagingStoreFlowableResponder<KEY, DATA> implements PagingCacheDataManager<DATA>, PagingOriginDataManager<DATA> {
  KEY getKey();

  FlowableDataStateManager<KEY> getFlowableDataStateManager();

  @override
  Future<List<DATA>?> loadData();

  @override
  Future<void> saveData(final List<DATA>? data, {required final bool additionalRequest});

  @override
  Future<List<DATA>> fetchOrigin(final List<DATA>? data, {required final bool additionalRequest});

  Future<bool> needRefresh(final List<DATA> data);
}
