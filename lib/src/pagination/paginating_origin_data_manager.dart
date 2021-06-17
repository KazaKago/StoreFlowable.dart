import 'package:store_flowable/src/fetching_result.dart';
import 'package:store_flowable/src/origin_data_manager.dart';

abstract class PaginatingOriginDataManager<DATA> implements OriginDataManager<DATA> {
  Future<FetchingResult<DATA>> fetchAdditionalDataFromOrigin(final DATA? cachedData);
}
