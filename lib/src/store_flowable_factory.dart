import 'package:store_flowable/src/base_store_flowable_factory.dart';

abstract class StoreFlowableFactory<KEY, DATA> implements BaseStoreFlowableFactory<KEY, DATA> {
  Future<DATA> fetchDataFromOrigin();
}
