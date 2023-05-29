import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../organizer/data/models/organizer/organizer.dart';

part 'favorite_organizer.freezed.dart';
part 'favorite_organizer.g.dart';

@freezed
class FavoriteOrganizer with _$FavoriteOrganizer {
  const factory FavoriteOrganizer({
    required int id,
    required DateTime dateTime,
    required Organizer organizer,
  }) = _FavoriteOrganizer;

  factory FavoriteOrganizer.fromJson(Map<String, dynamic> json) =>
      _$FavoriteOrganizerFromJson(json);
}
