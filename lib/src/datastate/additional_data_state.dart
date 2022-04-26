import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_data_state.freezed.dart';

@freezed
class AdditionalDataState with _$AdditionalDataState {
  const AdditionalDataState._();

  const factory AdditionalDataState.fixed({required String additionalRequestKey}) = AdditionalDataStateFixed;

  const factory AdditionalDataState.fixedWithNoMoreAdditionalData() = AdditionalDataStateFixedWithNoMoreAdditionalData;

  const factory AdditionalDataState.loading({required String additionalRequestKey}) = AdditionalDataStateLoading;

  const factory AdditionalDataState.error({required String additionalRequestKey, required Exception exception}) = AdditionalDataStateError;

  String? additionalRequestKeyOrNull() {
    return when(
      fixed: (additionalRequestKey) => additionalRequestKey,
      fixedWithNoMoreAdditionalData: () => null,
      loading: (additionalRequestKey) => additionalRequestKey,
      error: (additionalRequestKey, exception) => additionalRequestKey,
    );
  }
}
