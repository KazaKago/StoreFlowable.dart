import 'package:store_flowable/fetching_result.dart';

abstract class OriginDataManager<DATA> {
  Future<FetchingResult<DATA>> fetchDataFromOrigin();
}
