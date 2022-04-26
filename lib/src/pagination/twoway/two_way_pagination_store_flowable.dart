import 'package:store_flowable/src/pagination/oneway/pagination_store_flowable.dart';

abstract class TwoWayPaginationStoreFlowable<DATA> implements PaginationStoreFlowable<DATA> {
  Future<void> requestPrevData({bool continueWhenError});

  @override
  Future<void> update(DATA? newData, {String? nextKey, String? prevKey});
}
