import 'package:store_flowable/paginating/paginating_cache_data_manager.dart';
import 'package:store_flowable/paginating/paginating_origin_data_manager.dart';
import 'package:store_flowable/store_flowable_callback.dart';

abstract class PaginatingStoreFlowableCallback<KEY, DATA> implements StoreFlowableCallback<KEY, DATA>, PaginatingCacheDataManager<DATA>, PaginatingOriginDataManager<DATA> {}
