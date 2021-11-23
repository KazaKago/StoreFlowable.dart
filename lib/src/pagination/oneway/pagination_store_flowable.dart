import 'package:store_flowable/src/store_flowable.dart';

abstract class PaginationStoreFlowable<PARAM, DATA> implements StoreFlowable<PARAM, DATA> {
  Future<void> requestNextData({final bool continueWhenError});

  @override
  Future<void> update(final DATA? newData, {final String? nextKey});
}
