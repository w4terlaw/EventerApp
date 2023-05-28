import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../organizer/data/models/event/event.dart';
import '../booking/booking.dart';

part 'event_donation.freezed.dart';

part 'event_donation.g.dart';

@freezed
class EventDonation with _$EventDonation {
  const factory EventDonation({
    required int id,
    required DateTime dateTime,
    required double amount,
    required User user,
    required Event event,
  }) = _EventDonation;

  factory EventDonation.fromJson(Map<String, dynamic> json) =>
      _$EventDonationFromJson(json);
}
