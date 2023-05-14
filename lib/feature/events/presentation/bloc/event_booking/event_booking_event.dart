part of 'event_booking_bloc.dart';

@freezed
class EventBookingEvent with _$EventBookingEvent {
  const factory EventBookingEvent.eventBooking({
    required int eventId,
}) = _EventBooking;
}
