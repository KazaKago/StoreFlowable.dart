abstract class DataState {
  const DataState();

  const factory DataState.fixed({required final bool isReachLast}) = DataStateFixed;

  const factory DataState.loading() = DataStateLoading;

  const factory DataState.error(final Exception exception) = DataStateError;

  R when<R>({
    required final R Function(DataStateFixed state) fixed,
    required final R Function(DataStateLoading state) loading,
    required final R Function(DataStateError state) error,
  }) {
    if (this is DataStateFixed) {
      return fixed(this as DataStateFixed);
    } else if (this is DataStateLoading) {
      return loading(this as DataStateLoading);
    } else if (this is DataStateError) {
      return error(this as DataStateError);
    } else {
      throw TypeError();
    }
  }
}

class DataStateFixed<T> extends DataState {
  const DataStateFixed({required this.isReachLast});

  final bool isReachLast;
}

class DataStateLoading<T> extends DataState {
  const DataStateLoading();
}

class DataStateError<T> extends DataState {
  const DataStateError(this.exception) : super();
  final Exception exception;
}
