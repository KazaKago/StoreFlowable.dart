import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_flowable/src/datastate/additional_data_state.dart';

part 'data_state.freezed.dart';

@freezed
class DataState with _$DataState {
  const DataState._();

  const factory DataState.initial() = DataStateInitial;

  const factory DataState.fixed({required AdditionalDataState nextDataState, required AdditionalDataState prevDataState}) = DataStateFixed;

  const factory DataState.loading() = DataStateLoading;

  const factory DataState.error({required final Exception exception}) = DataStateError;

  AdditionalDataState nextDataStateOrNull() {
    return when(
      initial: () => const AdditionalDataState.fixedWithNoMoreAdditionalData(),
      fixed: (nextDataState, prevDataState) => nextDataState,
      loading: () => const AdditionalDataState.fixedWithNoMoreAdditionalData(),
      error: (exception) => const AdditionalDataState.fixedWithNoMoreAdditionalData(),
    );
  }

  AdditionalDataState prevDataStateOrNull() {
    return when(
      initial: () => const AdditionalDataState.fixedWithNoMoreAdditionalData(),
      fixed: (nextDataState, prevDataState) => prevDataState,
      loading: () => const AdditionalDataState.fixedWithNoMoreAdditionalData(),
      error: (exception) => const AdditionalDataState.fixedWithNoMoreAdditionalData(),
    );
  }

  String? nextKeyOrNull() {
    return when(
      initial: () => null,
      fixed: (nextDataState, prevDataState) => nextDataState.additionalRequestKeyOrNull(),
      loading: () => null,
      error: (exception) => null,
    );
  }

  String? prevKeyOrNull() {
    return when(
      initial: () => null,
      fixed: (nextDataState, prevDataState) => prevDataState.additionalRequestKeyOrNull(),
      loading: () => null,
      error: (exception) => null,
    );
  }
}
