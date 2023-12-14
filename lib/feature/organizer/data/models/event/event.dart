import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../user/data/models/event/event.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String name,
    required String description,
    required double expectedAmount,
    required int countOfMembers,
    required double recommendedDonation,
    required Organizer organizer,
    required List<EventDates> eventDates,
    required List<Venues> venues,
    required int number,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
