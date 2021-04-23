import 'package:store_flowable/paginating/paginating_store_flowable.dart';
import 'package:store_flowable/paginating/paginating_store_flowable_callback.dart';
import 'package:store_flowable/src/paginating/paginating_store_flowable_impl.dart';

extension PaginatingStoreFlowableExtension<KEY, DATA> on PaginatingStoreFlowableCallback<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  PaginatingStoreFlowable<KEY, DATA> create() {
    return PaginatingStoreFlowableImpl(this);
  }
}
