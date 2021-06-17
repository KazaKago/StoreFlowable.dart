import 'package:store_flowable/src/data_state.dart';

abstract class FlowAccessor<KEY> {
  Stream<DataState> getFlow(final KEY key);
}
