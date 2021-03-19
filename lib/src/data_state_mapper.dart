import 'package:store_flowable/core/state.dart';
import 'package:store_flowable/core/state_content.dart';
import 'package:store_flowable/data_state.dart';

extension DataStateMapper on DataState {
  State<DATA> mapState<DATA>(final StateContent<DATA> stateContent) {
    return when(
      fixed: (state) => State.fixed(stateContent),
      loading: (state) => State.loading(stateContent),
      error: (state) => State.error(stateContent, state.exception),
    );
  }
}
