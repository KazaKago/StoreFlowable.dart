import 'package:store_flowable/src/core/loading_state.dart';

extension LoadingStateStreamMapper<A> on Stream<LoadingState<A>> {
  Stream<LoadingState<Z>> mapContent<Z>(Z Function(A content) transform) {
    return map((event) {
      return event.when(
        loading: (content) => LoadingState.loading((content != null) ? transform(content) : null),
        completed: (content, next, prev) => LoadingState.completed(transform(content), next, prev),
        error: (exception) => LoadingState.error(exception),
      );
    });
  }
}
