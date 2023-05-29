part of 'user_bookings_bloc.dart';

@freezed
class UserBookingsEvent with _$UserBookingsEvent {
  const factory UserBookingsEvent.getBookings() = _GetBookings;
}
