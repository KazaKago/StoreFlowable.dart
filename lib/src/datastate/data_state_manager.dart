import 'package:store_flowable/src/datastate/data_state.dart';

abstract class DataStateManager<PARAM> {
  DataState load(final PARAM param);

  void save(final PARAM param, final DataState state);
}
