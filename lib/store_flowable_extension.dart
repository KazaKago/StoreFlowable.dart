import 'package:store_flowable/paginating/paginating_store_flowable.dart';
import 'package:store_flowable/paginating/paginating_store_flowable_callback.dart';
import 'package:store_flowable/src/paginating/paginating_store_flowable_impl.dart';
import 'package:store_flowable/src/store_flowable_impl.dart';
import 'package:store_flowable/store_flowable.dart';
import 'package:store_flowable/store_flowable_callback.dart';

extension StoreFlowableExtension<KEY, DATA> on StoreFlowableCallback<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  StoreFlowable<KEY, DATA> create() {
    return StoreFlowableImpl(this);
  }
}

extension PaginatingStoreFlowableExtension<KEY, DATA> on PaginatingStoreFlowableCallback<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  PaginatingStoreFlowable<KEY, DATA> create() {
    return PaginatingStoreFlowableImpl(this);
  }
}
