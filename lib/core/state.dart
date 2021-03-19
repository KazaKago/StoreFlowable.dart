import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_flowable/core/state_content.dart';

part 'state.freezed.dart';

@freezed
class State<T> with _$State<T> {
  const factory State.fixed(final StateContent<T> content) = _Fixed<T>;

  const factory State.loading(final StateContent<T> content) = _Loading<T>;

  const factory State.error(final StateContent<T> content, final Exception exception) = _Error<T>;
}
