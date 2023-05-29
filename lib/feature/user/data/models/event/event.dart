import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.dart';
part 'country.dart';
part 'event.freezed.dart';
part 'event.g.dart';
part 'event_dates.dart';
part 'organizer.dart';
part 'state.dart';
part 'venues.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String name,
    required String description,
    required Organizer organizer,
    required double expectedAmount,
    required int countOfMembers,
    required double recommendedDonation,
    required List<EventDates> eventDates,
    required List<Venues> venues,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
