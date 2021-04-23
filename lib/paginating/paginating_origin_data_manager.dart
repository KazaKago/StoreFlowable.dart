import 'package:store_flowable/fetching_result.dart';
import 'package:store_flowable/origin_data_manager.dart';

abstract class PaginatingOriginDataManager<DATA> implements OriginDataManager<DATA> {
  Future<FetchingResult<DATA>> fetchAdditionalDataFromOrigin(final DATA? cachedData);
}
