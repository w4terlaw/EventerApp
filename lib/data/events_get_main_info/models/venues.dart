part of 'event.dart';

@freezed
class Venues with _$Venues {
  const factory Venues({
    required List<String> photos,
    required String address,
    required City city,
  }) = _Venues;

  factory Venues.fromJson(Map<String, dynamic> json) => _$VenuesFromJson(json);
}