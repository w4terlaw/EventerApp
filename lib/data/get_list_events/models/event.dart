import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

part 'event.g.dart';

part 'venues.dart';

part 'city.dart';

part 'state.dart';

part 'country.dart';

part 'event_dates.dart';

part 'organizer.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String name,
    required String description,
    required Organizer organizer,
    required List<EventDates> eventDates,
    required List<Venues> venues,
  }) = _Events;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
