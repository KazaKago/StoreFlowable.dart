import 'package:store_flowable/core/state.dart';
import 'package:store_flowable/core/state_content_zipper.dart';
import 'package:tuple/tuple.dart';

extension StateZipper<A> on State<A> {
  State<Z> zip2<B, Z>(final State<B> state2, final Z Function(A rawContent1, B rawContent2) transform) {
    return when(
      fixed: (content) => state2.when(
        fixed: (otherContent) => State.fixed(content.zip2(otherContent, transform)),
        loading: (otherContent) => State.loading(content.zip2(otherContent, transform)),
        error: (otherContent, exception) => State.error(content.zip2(otherContent, transform), exception),
      ),
      loading: (content) => state2.when(
        fixed: (otherContent) => State.loading(content.zip2(otherContent, transform)),
        loading: (otherContent) => State.loading(content.zip2(otherContent, transform)),
        error: (otherContent, exception) => State.error(content.zip2(otherContent, transform), exception),
      ),
      error: (content, exception) => state2.when(
        fixed: (otherContent) => State.error(content.zip2(otherContent, transform), exception),
        loading: (otherContent) => State.error(content.zip2(otherContent, transform), exception),
        error: (otherContent, exception) => State.error(content.zip2(otherContent, transform), exception),
      ),
    );
  }

  State<Z> zip3<B, C, Z>(final State<B> state2, final State<C> state3, final Z Function(A rawContent1, B rawContent2, C rawContent3) transform) {
    return zip2(state2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(state3, (rawContent, C other) {
      return transform(rawContent.item1, rawContent.item2, other);
    });
  }

  State<Z> zip4<B, C, D, Z>(final State<B> state2, final State<C> state3, final State<D> state4, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4) transform) {
    return zip2(state2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(state3, (rawContent, C other) {
      return Tuple3(rawContent.item1, rawContent.item2, other);
    }).zip2(state4, (rawContent, D other) {
      return transform(rawContent.item1, rawContent.item2, rawContent.item3, other);
    });
  }

  State<Z> zip5<B, C, D, E, Z>(final State<B> state2, final State<C> state3, final State<D> state4, final State<E> state5, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4, E rawContent5) transform) {
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
