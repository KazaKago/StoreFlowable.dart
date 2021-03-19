import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_content.freezed.dart';

@freezed
class StateContent<T> with _$StateContent<T> {
  const factory StateContent.stored(final T value) = _Stored<T>;

  const factory StateContent.notStored() = _NotStored<T>;

  factory StateContent.wrap(final T? rawContent) {
    if (rawContent == null) {
      return const StateContent.notStored();
    } else {
      return StateContent.stored(rawContent);
    }
  }
}
