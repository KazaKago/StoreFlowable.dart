import 'package:store_flowable/src/pagination/paginating_store_flowable.dart';
import 'package:store_flowable/src/pagination/paginating_store_flowable_factory.dart';
import 'package:store_flowable/src/pagination/paginating_store_flowable_impl.dart';
import 'package:store_flowable/src/store_flowable.dart';
import 'package:store_flowable/src/store_flowable_factory.dart';
import 'package:store_flowable/src/store_flowable_impl.dart';

extension StoreFlowableExtension<KEY, DATA> on StoreFlowableFactory<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  StoreFlowable<KEY, DATA> create() {
    return StoreFlowableImpl(this);
  }
}

extension PaginatingStoreFlowableExtension<KEY, DATA> on PaginatingStoreFlowableFactory<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  PaginatingStoreFlowable<KEY, DATA> create() {
    return PaginatingStoreFlowableImpl(this);
  }
}
