import 'package:store_flowable/core/state_content.dart';
import 'package:tuple/tuple.dart';

extension StateContentZipper<A> on StateContent<A> {
  StateContent<Z> zip2<B, Z>(final StateContent<B> otherStateContent, final Z Function(A content1, B content2) transform) {
    return _zip(otherStateContent, transform);
  }

  StateContent<Z> zip3<B, C, Z>(final StateContent<B> otherStateContent1, final StateContent<C> otherStateContent2, final Z Function(A content1, B content2, C content3) transform) {
    return _zip<B, Tuple2<A, B>>(otherStateContent1, (content1, content2) {
      return Tuple2(content1, content2);
    })._zip<C, Z>(otherStateContent2, (content1_2, content3) {
      return transform(content1_2.item1, content1_2.item2, content3);
    });
  }

  StateContent<Z> zip4<B, C, D, Z>(final StateContent<B> otherStateContent1, final StateContent<C> otherStateContent2, final StateContent<D> otherStateContent3, final Z Function(A content1, B content2, C content3, D content4) transform) {
    return _zip<B, Tuple2<A, B>>(otherStateContent1, (content1, content2) {
      return Tuple2(content1, content2);
    })._zip<C, Tuple3<A, B, C>>(otherStateContent2, (content1_2, content3) {
      return Tuple3(content1_2.item1, content1_2.item2, content3);
    })._zip<D, Z>(otherStateContent3, (content1_2_3, content4) {
      return transform(content1_2_3.item1, content1_2_3.item2, content1_2_3.item3, content4);
    });
  }

  StateContent<Z> zip5<B, C, D, E, Z>(final StateContent<B> otherStateContent1, final StateContent<C> otherStateContent2, final StateContent<D> otherStateContent3, final StateContent<E> otherStateContent4, final Z Function(A content1, B content2, C content3, D content4, E content5) transform) {
    return _zip<B, Tuple2<A, B>>(otherStateContent1, (content1, content2) {
      return Tuple2(content1, content2);
    })._zip<C, Tuple3<A, B, C>>(otherStateContent2, (content1_2, content3) {
      return Tuple3(content1_2.item1, content1_2.item2, content3);
    })._zip<D, Tuple4<A, B, C, D>>(otherStateContent3, (content1_2_3, content4) {
      return Tuple4(content1_2_3.item1, content1_2_3.item2, content1_2_3.item3, content4);
    })._zip<E, Z>(otherStateContent4, (content1_2_3_4, content5) {
      return transform(content1_2_3_4.item1, content1_2_3_4.item2, content1_2_3_4.item3, content1_2_3_4.item4, content5);
    });
  }

  StateContent<Z> _zip<B, Z>(final StateContent<B> otherStateContent, final Z Function(A content1, B content2) transform) {
    return when<StateContent<Z>>(
      stored: (rawContent) => otherStateContent.when(
        stored: (otherRawContent) => StateContent.stored(transform(rawContent, otherRawContent)),
        notStored: () => const StateContent.notStored(),
      ),
      notStored: () => const StateContent.notStored(),
    );
  }
}
