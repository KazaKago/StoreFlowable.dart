import 'package:store_flowable/src/datastate/data_state.dart';

abstract class DataStateManager<PARAM> {
  DataState load(PARAM param);

  void save(PARAM param, DataState state);
}
