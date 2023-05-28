part of 'my_bookings_bloc.dart';

@freezed
class MyBookingsEvent with _$MyBookingsEvent {
  const factory MyBookingsEvent.fetch({
    required int eventId,
  }) = _MyBookingsFetch;

  const factory MyBookingsEvent.delete({
    required int bookingId,
    required int eventId,
  }) = _MyBookingsDelete;
}
