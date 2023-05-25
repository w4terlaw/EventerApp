import 'package:freezed_annotation/freezed_annotation.dart';

part 'organizer_info.freezed.dart';

part 'organizer_info.g.dart';

@freezed
class OrganizerInfo with _$OrganizerInfo {
  const factory OrganizerInfo({
    required int countOfSubscribers,
    required int countOfEvents,
    required bool isSubscribed,
  }) = _OrganizerInfo;

  factory OrganizerInfo.fromJson(Map<String, dynamic> json) =>
      _$OrganizerInfoFromJson(json);
}
