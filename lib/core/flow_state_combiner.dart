import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/core/state.dart';
import 'package:store_flowable/core/state_zipper.dart';

extension FlowStateCombiner<A> on Stream<State<A>> {
  Stream<State<Z>> combineState2<B, Z>(final Stream<State<B>> otherState, final Z Function(A content1, B content2) transform) {
    return CombineLatestStream.combine2(this, otherState, (State<A> state1, State<B> state2) => state1.zip2(state2, transform));
  }

  Stream<State<Z>> combineState3<B, C, Z>(final Stream<State<B>> otherState1, final Stream<State<C>> otherState2, final Z Function(A content1, B content2, C content3) transform) {
    return CombineLatestStream.combine3(this, otherState1, otherState2, (State<A> state1, State<B> state2, State<C> state3) => state1.zip3(state2, state3, transform));
  }

  Stream<State<Z>> combineState4<B, C, D, Z>(final Stream<State<B>> otherState1, final Stream<State<C>> otherState2, final Stream<State<D>> otherState3, final Z Function(A content1, B content2, C content3, D content4) transform) {
    return CombineLatestStream.combine4(this, otherState1, otherState2, otherState3, (State<A> state1, State<B> state2, State<C> state3, State<D> state4) => state1.zip4(state2, state3, state4, transform));
  }

  Stream<State<Z>> combineState5<B, C, D, E, Z>(final Stream<State<B>> otherState1, final Stream<State<C>> otherState2, final Stream<State<D>> otherState3, final Stream<State<E>> otherState4, final Z Function(A content1, B content2, C content3, D content4, E content5) transform) {
    return CombineLatestStream.combine5(this, otherState1, otherState2, otherState3, otherState4, (State<A> state1, State<B> state2, State<C> state3, State<D> state4, State<E> state5) => state1.zip5(state2, state3, state4, state5, transform));
  }
}
