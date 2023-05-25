import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

part 'event.g.dart';

part 'venues.dart';

part 'event_dates.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String name,
    required String description,
    required List<EventDates> eventDates,
    required List<Venues> venues,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
