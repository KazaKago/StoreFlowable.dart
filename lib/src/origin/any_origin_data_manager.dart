import 'package:store_flowable/src/origin/internal_fetched.dart';
import 'package:store_flowable/src/origin/origin_data_manager.dart';

class AnyOriginDataManager<DATA> implements OriginDataManager<DATA> {
  AnyOriginDataManager({required this.fetchFunc, required this.fetchNextFunc, required this.fetchPrevFunc});

  final Future<InternalFetched<DATA>> Function() fetchFunc;
  final Future<InternalFetched<DATA>> Function(String nextKey) fetchNextFunc;
  final Future<InternalFetched<DATA>> Function(String prevKey) fetchPrevFunc;

  @override
  Future<InternalFetched<DATA>> fetch() {
    return fetchFunc();
  }

  @override
  Future<InternalFetched<DATA>> fetchNext(String nextKey) {
    return fetchNextFunc(nextKey);
  }

  @override
  Future<InternalFetched<DATA>> fetchPrev(String prevKey) {
    return fetchPrevFunc(prevKey);
  }
}
