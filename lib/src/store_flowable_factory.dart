import 'package:store_flowable/src/base_store_flowable_factory.dart';

abstract class StoreFlowableFactory<KEY, DATA, PARAM> implements BaseStoreFlowableFactory<KEY, DATA, PARAM> {
  Future<DATA> fetchDataFromOrigin(final PARAM param);
}
