import 'package:store_flowable/core/state.dart';
import 'package:store_flowable/core/state_content.dart';

extension FlowStateMapper<A> on Stream<State<A>> {
  Stream<State<Z>> mapContent<Z>(final Z Function(A content) transform) {
    return map((event) {
      final content = event.content.when<StateContent<Z>>(
        stored: (rawContent) => StateContent.stored(transform(rawContent)),
        notStored: () => StateContent<Z>.notStored(),
      );
      return event.when<State<Z>>(
        fixed: (_) => State.fixed(content),
        loading: (_) => State.loading(content),
        error: (_, exception) => State.error(content, exception),
      );
    });
  }
}
