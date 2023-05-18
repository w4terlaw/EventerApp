part of 'event.dart';

@freezed
class EventDates with _$EventDates {
  const factory EventDates(
      {required int id,
        required DateTime startDateTime,
        required DateTime endDateTime}) = _EventDates;

  factory EventDates.fromJson(Map<String, dynamic> json) =>
      _$EventDatesFromJson(json);
}