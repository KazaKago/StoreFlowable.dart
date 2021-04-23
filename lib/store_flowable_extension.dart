import 'package:store_flowable/src/store_flowable_impl.dart';
import 'package:store_flowable/store_flowable.dart';
import 'package:store_flowable/store_flowable_callback.dart';

extension StoreFlowableExtension<KEY, DATA> on StoreFlowableCallback<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  StoreFlowable<KEY, DATA> create() {
    return StoreFlowableImpl(this);
  }
}
