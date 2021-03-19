import 'package:store_flowable/core/state.dart';
import 'package:store_flowable/core/state_content_zipper.dart';
import 'package:tuple/tuple.dart';

extension StateZipper<A> on State<A> {
  State<Z> zip2<B, Z>(final State<B> otherState, final Z Function(A content1, B content2) transform) {
    return _zip(otherState, transform);
  }

  State<Z> zip3<B, C, Z>(final State<B> otherState1, final State<C> otherState2, final Z Function(A content1, B content2, C content3) transform) {
    return _zip<B, Tuple2<A, B>>(otherState1, (content1, content2) {
      return Tuple2(content1, content2);
    })._zip<C, Z>(otherState2, (content1_2, content3) {
      return transform(content1_2.item1, content1_2.item2, content3);
    });
  }

  State<Z> zip4<B, C, D, Z>(final State<B> otherState1, final State<C> otherState2, final State<D> otherState3, final Z Function(A content1, B content2, C content3, D content4) transform) {
    return _zip<B, Tuple2<A, B>>(otherState1, (content1, content2) {
      return Tuple2(content1, content2);
    })._zip<C, Tuple3<A, B, C>>(otherState2, (content1_2, content3) {
      return Tuple3(content1_2.item1, content1_2.item2, content3);
    })._zip<D, Z>(otherState3, (content1_2_3, content4) {
      return transform(content1_2_3.item1, content1_2_3.item2, content1_2_3.item3, content4);
    });
  }

  State<Z> zip5<B, C, D, E, Z>(final State<B> otherState1, final State<C> otherState2, final State<D> otherState3, final State<E> otherState4, final Z Function(A content1, B content2, C content3, D content4, E content5) transform) {
    return _zip<B, Tuple2<A, B>>(otherState1, (content1, content2) {
      return Tuple2(content1, content2);
    })._zip<C, Tuple3<A, B, C>>(otherState2, (content1_2, content3) {
      return Tuple3(content1_2.item1, content1_2.item2, content3);
    })._zip<D, Tuple4<A, B, C, D>>(otherState3, (content1_2_3, content4) {
      return Tuple4(content1_2_3.item1, content1_2_3.item2, content1_2_3.item3, content4);
    })._zip<E, Z>(otherState4, (content1_2_3_4, content5) {
      return transform(content1_2_3_4.item1, content1_2_3_4.item2, content1_2_3_4.item3, content1_2_3_4.item4, content5);
    });
  }

  State<Z> _zip<B, Z>(final State<B> otherState, final Z Function(A content1, B content2) transform) {
    return when<State<Z>>(
      fixed: (content) => otherState.when<State<Z>>(
        fixed: (otherContent) => State.fixed(content.zip2(otherContent, transform)),
        loading: (otherContent) => State.loading(content.zip2(otherContent, transform)),
        error: (otherContent, exception) => State.error(content.zip2(otherContent, transform), exception),
      ),
      loading: (content) => otherState.when<State<Z>>(
        fixed: (otherContent) => State.loading(content.zip2(otherContent, transform)),
        loading: (otherContent) => State.loading(content.zip2(otherContent, transform)),
        error: (otherContent, exception) => State.error(content.zip2(otherContent, transform), exception),
      ),
      error: (content, exception) => otherState.when<State<Z>>(
        fixed: (otherContent) => State.error(content.zip2(otherContent, transform), exception),
        loading: (otherContent) => State.error(content.zip2(otherContent, transform), exception),
        error: (otherContent, exception) => State.error(content.zip2(otherContent, transform), exception),
      ),
    );
  }
}
