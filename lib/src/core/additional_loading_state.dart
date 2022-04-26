import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_loading_state.freezed.dart';

@freezed
class AdditionalLoadingState with _$AdditionalLoadingState {
  const factory AdditionalLoadingState.fixed({required bool canRequestAdditionalData}) = _Fixed;

  const factory AdditionalLoadingState.loading() = _Loading;

  const factory AdditionalLoadingState.error(Exception exception) = _Error;
}
