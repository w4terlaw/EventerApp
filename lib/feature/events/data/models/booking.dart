import 'package:eventer_app/feature/user/data/models/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';

part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required int id,
    required DateTime dateTime,
    required int eventId,
    required User user,
    required EventDates eventDates,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required String avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
