import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String name,
    required List<EventDates> eventDates,
    required List<Venues> venues,
  }) = _Events;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class Venues with _$Venues {
  const factory Venues({
    required List<String> photos,
    required String address,
    required City city,
  }) = _Venues;

  factory Venues.fromJson(Map<String, dynamic> json) => _$VenuesFromJson(json);
}

@freezed
class City with _$City {
  const factory City({
    required int id,
    required String name,
    required State state,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
class State with _$State {
  const factory State({
    required int id,
    required String name,
    required Country country,
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    required int id,
    required String name,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}

// @freezed
// class Category with _$Category {
//   const factory Category({
//     required int id,
//     required String name,
//   }) = _Category;
//
//   factory Category.fromJson(Map<String, dynamic> json) =>
//       _$CategoryFromJson(json);
// }

// @freezed
// class Organizer with _$Organizer {
//   const factory Organizer({
//     required int id,
//     required String name,
//     required String logo,
//     String? background,
//     String? description,
//     required String cardNumber,
//     required String cardHolderName,
//     String? facebook,
//     String? telegram,
//     String? vk,
//     String? twitter,
//     String? instagram,
//     // required UserEntity user,
//   }) = _Organizer;
//
//   factory Organizer.fromJson(Map<String, dynamic> json) =>
//       _$OrganizerFromJson(json);
// }

@freezed
class EventDates with _$EventDates {
  const factory EventDates(
      {required DateTime startDateTime,
      required DateTime endDateTime}) = _EventDates;

  factory EventDates.fromJson(Map<String, dynamic> json) =>
      _$EventDatesFromJson(json);
}
