import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/core/state.dart';
import 'package:store_flowable/src/core/state_zipper.dart';

extension FlowStateCombiner<A> on Stream<State<A>> {
  Stream<State<Z>> combineState2<B, Z>(final Stream<State<B>> stateStream2, final Z Function(A rawContent1, B rawContent2) transform) {
    return CombineLatestStream.combine2(this, stateStream2, (State<A> state1, State<B> state2) => state1.zip2(state2, transform));
  }

  Stream<State<Z>> combineState3<B, C, Z>(final Stream<State<B>> stateStream2, final Stream<State<C>> stateStream3, final Z Function(A rawContent1, B rawContent2, C rawContent3) transform) {
    return CombineLatestStream.combine3(this, stateStream2, stateStream3, (State<A> state1, State<B> state2, State<C> state3) => state1.zip3(state2, state3, transform));
  }

  Stream<State<Z>> combineState4<B, C, D, Z>(final Stream<State<B>> stateStream2, final Stream<State<C>> stateStream3, final Stream<State<D>> stateStream4, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4) transform) {
    return CombineLatestStream.combine4(this, stateStream2, stateStream3, stateStream4, (State<A> state1, State<B> state2, State<C> state3, State<D> state4) => state1.zip4(state2, state3, state4, transform));
  }

  Stream<State<Z>> combineState5<B, C, D, E, Z>(final Stream<State<B>> stateStream2, final Stream<State<C>> stateStream3, final Stream<State<D>> stateStream4, final Stream<State<E>> stateStream5, final Z Function(A rawContent1, B rawContent2, C rawContent3, D rawContent4, E rawContent5) transform) {
    return CombineLatestStream.combine5(this, stateStream2, stateStream3, stateStream4, stateStream5, (State<A> state1, State<B> state2, State<C> state3, State<D> state4, State<E> state5) => state1.zip5(state2, state3, state4, state5, transform));
  }
}
