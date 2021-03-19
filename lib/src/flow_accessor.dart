import 'package:store_flowable/data_state.dart';

abstract class FlowAccessor<KEY> {
  Stream<DataState> getFlow(final KEY key);
}
