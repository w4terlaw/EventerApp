part of 'event.dart';

@freezed
class Organizer with _$Organizer {
  const factory Organizer({
    required int id,
    required String name,
    required String logo,
  }) = _Organizer;

  factory Organizer.fromJson(Map<String, dynamic> json) =>
      _$OrganizerFromJson(json);
}
