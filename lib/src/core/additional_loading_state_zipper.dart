import 'package:store_flowable/src/core/additional_loading_state.dart';

extension AdditionalLoadingStateZipper on AdditionalLoadingState {
  AdditionalLoadingState zip(final AdditionalLoadingState state2) {
    return when(
      fixed: (canRequestAdditionalData) => state2.when(
        fixed: (otherCanRequestAdditionalData) => AdditionalLoadingState.fixed(canRequestAdditionalData: canRequestAdditionalData || otherCanRequestAdditionalData),
        loading: () => const AdditionalLoadingState.loading(),
        error: (otherException) => AdditionalLoadingState.error(otherException),
      ),
      loading: () => state2.when(
        fixed: (otherCanRequestAdditionalData) => const AdditionalLoadingState.loading(),
        loading: () => const AdditionalLoadingState.loading(),
        error: (otherException) => AdditionalLoadingState.error(otherException),
      ),
      error: (exception) => state2.when(
        fixed: (otherCanRequestAdditionalData) => AdditionalLoadingState.error(exception),
        loading: () => AdditionalLoadingState.error(exception),
        error: (otherException) => AdditionalLoadingState.error(exception),
      ),
    );
  }
}
