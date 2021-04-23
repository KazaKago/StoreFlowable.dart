import 'package:store_flowable/core/state_content.dart';
import 'package:tuple/tuple.dart';

extension StateContentZipper<A> on StateContent<A> {
  StateContent<Z> zip2<B, Z>(final StateContent<B> content2, final Z Function(A rawContent1, B rawContent2) transform) {
    return when(
      stored: (rawContent) => content2.when(
        stored: (otherRawContent) => StateContent.stored(transform(rawContent, otherRawContent)),
        notStored: () => const StateContent.notStored(),
      ),
      notStored: () => content2.when(
        stored: (otherRawContent) => const StateContent.notStored(),
        notStored: () => const StateContent.notStored(),
      ),
    );
  }

  StateContent<Z> zip3<B, C, Z>(final StateContent<B> content2, final StateContent<C> content3, final Z Function(A rawContent1, B rawContent2, C rawContent3) transform) {
    return zip2(content2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(content3, (rawContent, C other) {
      return transform(rawContent.item1, rawContent.item2, other);
    });
  }

  StateContent<Z> zip4<B, C, D, Z>(final StateContent<B> content2, final StateContent<C> content3, final StateContent<D> content4, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4) transform) {
    return zip2(content2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(content3, (rawContent, C other) {
      return Tuple3(rawContent.item1, rawContent.item2, other);
    }).zip2(content4, (rawContent, D other) {
      return transform(rawContent.item1, rawContent.item2, rawContent.item3, other);
    });
  }

  StateContent<Z> zip5<B, C, D, E, Z>(final StateContent<B> content2, final StateContent<C> content3, final StateContent<D> content4, final StateContent<E> content5, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4, E rawContent5) transform) {
    return zip2(content2, (rawContent, B other) {
      return Tuple2(rawContent, other);
    }).zip2(content3, (rawContent, C other) {
      return Tuple3(rawContent.item1, rawContent.item2, other);
    }).zip2(content4, (rawContent, D other) {
      return Tuple4(rawContent.item1, rawContent.item2, rawContent.item3, other);
    }).zip2(content5, (rawContent, E other) {
      return transform(rawContent.item1, rawContent.item2, rawContent.item3, rawContent.item4, other);
    });
  }
}
