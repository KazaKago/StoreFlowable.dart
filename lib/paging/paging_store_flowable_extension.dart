import 'package:store_flowable/as_data_type.dart';
import 'package:store_flowable/paging/paging_store_flowable.dart';
import 'package:store_flowable/paging/paging_store_flowable_responder.dart';
import 'package:store_flowable/src/paging/paging_store_flowable_impl.dart';

extension PagingStoreFlowableExtension<KEY, DATA> on PagingStoreFlowable<KEY, DATA> {
  Future<List<DATA>?> getOrNull({final AsDataType type = AsDataType.mix}) async {
    try {
      return await get(type: type);
    } on Exception catch (_) {
      return null;
    }
  }
}

extension PagingStoreFlowableResponderExtension<KEY, DATA> on PagingStoreFlowableResponder<KEY, DATA> {
  // ignore: use_to_and_as_if_applicable
  PagingStoreFlowable<KEY, DATA> create() {
    return PagingStoreFlowableImpl(this);
  }
}
