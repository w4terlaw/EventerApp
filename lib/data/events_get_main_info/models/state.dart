part of 'event.dart';

@freezed
class State with _$State {
  const factory State({
    required int id,
    required String name,
    required Country country,
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}