import 'package:store_flowable/src/pagination/paginating_cache_data_manager.dart';
import 'package:store_flowable/src/pagination/paginating_origin_data_manager.dart';
import 'package:store_flowable/src/store_flowable_factory.dart';

abstract class PaginatingStoreFlowableFactory<KEY, DATA> implements StoreFlowableFactory<KEY, DATA>, PaginatingCacheDataManager<DATA>, PaginatingOriginDataManager<DATA> {}
