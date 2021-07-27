import 'package:store_flowable/src/datastate/data_state.dart';

abstract class DataStateManager<KEY> {
  DataState load(final KEY key);

  void save(final KEY key, final DataState state);
}
