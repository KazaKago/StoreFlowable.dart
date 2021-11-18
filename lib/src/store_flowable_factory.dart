import 'package:store_flowable/src/base_store_flowable_factory.dart';

abstract class StoreFlowableFactory<PARAM, DATA> implements BaseStoreFlowableFactory<PARAM, DATA> {
  Future<DATA> fetchDataFromOrigin(final PARAM param);
}
