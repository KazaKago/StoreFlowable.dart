import 'package:store_flowable/cache_data_manager.dart';

abstract class PaginatingCacheDataManager<DATA> implements CacheDataManager<DATA> {
  Future<void> saveAdditionalDataToCache(final DATA? cachedData, final DATA newData);
}
