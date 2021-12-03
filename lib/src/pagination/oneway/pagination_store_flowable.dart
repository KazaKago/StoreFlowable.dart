import 'package:store_flowable/src/store_flowable.dart';

abstract class PaginationStoreFlowable<DATA> implements StoreFlowable<DATA> {
  Future<void> requestNextData({final bool continueWhenError});

  @override
  Future<void> update(final DATA? newData, {final String? nextKey});
}
