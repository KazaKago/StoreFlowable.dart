import 'package:store_flowable/src/data_state.dart';

abstract class DataStateManager<KEY> {
  DataState loadState(final KEY key);

  void saveState(final KEY key, final DataState state);
}
