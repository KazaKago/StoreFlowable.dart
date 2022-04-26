import 'package:store_flowable/src/core/additional_loading_state_zipper.dart';
import 'package:store_flowable/src/core/loading_state.dart';
import 'package:tuple/tuple.dart';

extension LoadingStateZipper<A> on LoadingState<A> {
  LoadingState<Z> zip2<B, Z>(LoadingState<B> state2, Z Function(A rawContent1, B rawContent2) transform) {
    return when(
      loading: (content) => state2.when(
        loading: (otherContent) => LoadingState.loading((content != null && otherContent != null) ? transform(content, otherContent) : null),
        completed: (otherContent, otherNext, otherPrev) => LoadingState.loading((content != null) ? transform(content, otherContent) : null),
        error: (otherException) => LoadingState.error(otherException),
      ),
      completed: (content, next, prev) => state2.when(
        loading: (otherContent) => LoadingState.loading((otherContent != null) ? transform(content, otherContent) : null),
        completed: (otherContent, otherNext, otherPrev) => LoadingState.completed(transform(content, otherContent), next.zip(otherNext), prev.zip(otherPrev)),
        error: (otherException) => LoadingState.error(otherException),
      ),
      error: (exception) => state2.when(
        loading: (otherContent) => LoadingState.error(exception),
        completed: (otherContent, otherNext, otherPrev) => LoadingState.error(exception),
        error: (otherException) => LoadingState.error(exception),
      ),
    );
  }

  LoadingState<Z> zip3<B, C, Z>(LoadingState<B> state2, LoadingState<C> state3, Z Function(A rawContent1, B rawContent2, C rawContent3) transform) {
    return zip2(state2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(state3, (rawContent, C other) {
      return transform(rawContent.item1, rawContent.item2, other);
    });
  }

  LoadingState<Z> zip4<B, C, D, Z>(LoadingState<B> state2, LoadingState<C> state3, LoadingState<D> state4, Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4) transform) {
    return zip2(state2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(state3, (rawContent, C other) {
      return Tuple3(rawContent.item1, rawContent.item2, other);
    }).zip2(state4, (rawContent, D other) {
      return transform(rawContent.item1, rawContent.item2, rawContent.item3, other);
    });
  }

  LoadingState<Z> zip5<B, C, D, E, Z>(LoadingState<B> state2, LoadingState<C> state3, LoadingState<D> state4, LoadingState<E> state5, Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4, E rawContent5) transform) {
    return zip2(state2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(state3, (rawContent, C other) {
      return Tuple3(rawContent.item1, rawContent.item2, other);
    }).zip2(state4, (rawContent, D other) {
      return Tuple4(rawContent.item1, rawContent.item2, rawContent.item3, other);
    }).zip2(state5, (rawContent, E other) {
      return transform(rawContent.item1, rawContent.item2, rawContent.item3, rawContent.item4, other);
    });
  }
}
