import 'package:store_flowable/src/core/state.dart';
import 'package:store_flowable/src/core/state_content.dart';

extension FlowStateMapper<A> on Stream<State<A>> {
  Stream<State<Z>> mapContent<Z>(final Z Function(A content) transform) {
    return map((event) {
      final content = event.content.when(
        stored: (rawContent) => StateContent.stored(transform(rawContent)),
        notStored: () => StateContent<Z>.notStored(),
      );
      return event.when(
        fixed: (_) => State.fixed(content),
        loading: (_) => State.loading(content),
        error: (_, exception) => State.error(content, exception),
      );
    });
  }
}
