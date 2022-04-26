import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyed_request_type.freezed.dart';

@freezed
class KeyedRequestType with _$KeyedRequestType {
  const factory KeyedRequestType.refresh() = _Refresh;

  const factory KeyedRequestType.next(String requestKey) = _Next;

  const factory KeyedRequestType.prev(String requestKey) = _Prev;
}
