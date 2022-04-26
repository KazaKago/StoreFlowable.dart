import 'package:store_flowable/src/store_flowable.dart';

abstract class PaginationStoreFlowable<DATA> implements StoreFlowable<DATA> {
  Future<void> requestNextData({bool continueWhenError});

  @override
  Future<void> update(DATA? newData, {String? nextKey});
}
