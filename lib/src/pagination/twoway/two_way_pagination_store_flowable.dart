import 'package:store_flowable/src/pagination/oneway/pagination_store_flowable.dart';

abstract class TwoWayPaginationStoreFlowable<PARAM, DATA> implements PaginationStoreFlowable<PARAM, DATA> {
  Future<void> requestPrevData({final bool continueWhenError});

  @override
  Future<void> update(final DATA? newData, {final String? nextKey, final String? prevKey});
}
