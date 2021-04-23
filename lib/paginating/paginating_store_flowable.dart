import 'package:store_flowable/store_flowable.dart';

abstract class PaginatingStoreFlowable<KEY, DATA> implements StoreFlowable<KEY, DATA> {
  Future<void> requestAdditionalData({final bool continueWhenError});
}
