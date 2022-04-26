import 'package:store_flowable/src/datastate/data_state.dart';

abstract class FlowAccessor<PARAM> {
  Stream<DataState> getFlow(PARAM param);
}
