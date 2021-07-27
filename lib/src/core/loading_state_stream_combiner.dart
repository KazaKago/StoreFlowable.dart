import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/core/loading_state.dart';
import 'package:store_flowable/src/core/loading_state_zipper.dart';

extension LoadingStateStreamCombiner<A> on Stream<LoadingState<A>> {
  Stream<LoadingState<Z>> combineState2<B, Z>(final Stream<LoadingState<B>> stateStream2, final Z Function(A rawContent1, B rawContent2) transform) {
    return CombineLatestStream.combine2(this, stateStream2, (LoadingState<A> state1, LoadingState<B> state2) => state1.zip2(state2, transform));
  }

  Stream<LoadingState<Z>> combineState3<B, C, Z>(final Stream<LoadingState<B>> stateStream2, final Stream<LoadingState<C>> stateStream3, final Z Function(A rawContent1, B rawContent2, C rawContent3) transform) {
    return CombineLatestStream.combine3(this, stateStream2, stateStream3, (LoadingState<A> state1, LoadingState<B> state2, LoadingState<C> state3) => state1.zip3(state2, state3, transform));
  }

  Stream<LoadingState<Z>> combineState4<B, C, D, Z>(final Stream<LoadingState<B>> stateStream2, final Stream<LoadingState<C>> stateStream3, final Stream<LoadingState<D>> stateStream4, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4) transform) {
    return CombineLatestStream.combine4(this, stateStream2, stateStream3, stateStream4, (LoadingState<A> state1, LoadingState<B> state2, LoadingState<C> state3, LoadingState<D> state4) => state1.zip4(state2, state3, state4, transform));
  }

  Stream<LoadingState<Z>> combineState5<B, C, D, E, Z>(final Stream<LoadingState<B>> stateStream2, final Stream<LoadingState<C>> stateStream3, final Stream<LoadingState<D>> stateStream4, final Stream<LoadingState<E>> stateStream5, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4, E rawContent5) transform) {
    return CombineLatestStream.combine5(this, stateStream2, stateStream3, stateStream4, stateStream5, (LoadingState<A> state1, LoadingState<B> state2, LoadingState<C> state3, LoadingState<D> state4, LoadingState<E> state5) => state1.zip5(state2, state3, state4, state5, transform));
  }
}
