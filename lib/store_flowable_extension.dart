import 'package:store_flowable/as_data_type.dart';
import 'package:store_flowable/src/store_flowable_impl.dart';
import 'package:store_flowable/store_flowable.dart';
import 'package:store_flowable/store_flowable_responder.dart';

extension StoreFlowableExtension<KEY, DATA> on StoreFlowable<KEY, DATA> {
  Future<DATA?> getOrNull({final AsDataType type = AsDataType.mix}) async {
    try {
      return await get(type: type);
    } on Exception catch (_) {
      return null;
    }
  }
}

extension StoreFlowableResponderExtension<KEY, DATA> on StoreFlowableResponder<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  StoreFlowable<KEY, DATA> create() {
    return StoreFlowableImpl(this);
  }
}
