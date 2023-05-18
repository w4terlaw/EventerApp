part of 'get_my_event_bookings_bloc.dart';

@freezed
class GetMyEventBookingsEvent with _$GetMyEventBookingsEvent {
  const factory GetMyEventBookingsEvent.fetch({
    required int eventId,
}) = _GetMyEventBookingsFetch;
}
