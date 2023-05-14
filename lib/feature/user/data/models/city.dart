part of 'event.dart';

@freezed
class City with _$City {
  const factory City({
    required int id,
    required String name,
    required State state,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}