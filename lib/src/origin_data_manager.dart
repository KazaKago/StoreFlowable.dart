import 'package:store_flowable/src/fetching_result.dart';

abstract class OriginDataManager<DATA> {
  Future<FetchingResult<DATA>> fetchDataFromOrigin();
}
