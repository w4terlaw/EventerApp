import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizer.freezed.dart';

part 'organizer.g.dart';

@freezed
class Organizer with _$Organizer {
  const factory Organizer({
    required int id,
    required String name,
    required String logo,
    required String background,
    required String description,
    required String cardNumber,
    required String cardHolderName,
    required String? facebook,
    required String? telegram,
    required String? vk,
    required String? twitter,
    required String? instagram,
  }) = _Organizer;

  factory Organizer.fromJson(Map<String, dynamic> json) =>
      _$OrganizerFromJson(json);
}
