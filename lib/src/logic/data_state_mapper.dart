import 'package:store_flowable/src/core/additional_loading_state.dart';
import 'package:store_flowable/src/core/loading_state.dart';
import 'package:store_flowable/src/datastate/data_state.dart';

extension DataStateMapper on DataState {
  LoadingState<DATA> toLoadingState<DATA>(final DATA? content) {
    return when(
      fixed: (nextDataState, prevDataState) {
        if (content != null) {
          return nextDataState.when(
            fixed: (canRequestAdditionalData) {
              const nextState = AdditionalLoadingState.fixed(canRequestAdditionalData: true);
              return prevDataState.when(
                fixed: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: true)),
                fixedWithNoMoreAdditionalData: () => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: false)),
                loading: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.loading()),
                error: (canRequestAdditionalData, exception) => LoadingState.completed(content, nextState, AdditionalLoadingState.error(exception)),
              );
            },
            fixedWithNoMoreAdditionalData: () {
              const nextState = AdditionalLoadingState.fixed(canRequestAdditionalData: false);
              return prevDataState.when(
                fixed: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: true)),
                fixedWithNoMoreAdditionalData: () => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: false)),
                loading: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.loading()),
                error: (canRequestAdditionalData, exception) => LoadingState.completed(content, nextState, AdditionalLoadingState.error(exception)),
              );
            },
            loading: (canRequestAdditionalData) {
              const nextState = AdditionalLoadingState.loading();
              return prevDataState.when(
                fixed: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: true)),
                fixedWithNoMoreAdditionalData: () => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: false)),
                loading: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.loading()),
                error: (canRequestAdditionalData, exception) => LoadingState.completed(content, nextState, AdditionalLoadingState.error(exception)),
              );
            },
            error: (canRequestAdditionalData, exception) {
              final nextState = AdditionalLoadingState.error(exception);
              return prevDataState.when(
                fixed: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: true)),
                fixedWithNoMoreAdditionalData: () => LoadingState.completed(content, nextState, const AdditionalLoadingState.fixed(canRequestAdditionalData: false)),
                loading: (canRequestAdditionalData) => LoadingState.completed(content, nextState, const AdditionalLoadingState.loading()),
                error: (canRequestAdditionalData, exception) => LoadingState.completed(content, nextState, AdditionalLoadingState.error(exception)),
              );
            },
          );
        } else {
          return LoadingState.loading(content);
        }
      },
      loading: () {
        return LoadingState.loading(content);
      },
      error: (exception) {
        return LoadingState.error(exception);
      },
    );
  }
}
