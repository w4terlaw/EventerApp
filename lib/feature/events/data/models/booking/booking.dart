import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../organizer/data/models/event/event.dart';

part 'booking.freezed.dart';

part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required int id,
    required Event event,
    required User user,
    required List<Ticket> tickets,
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

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    required String ticketType,
    required int seat,
    required int eventDatesId,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}
