part of 'get_my_event_bookings_bloc.dart';

@freezed
class GetMyEventBookingsState with _$GetMyEventBookingsState {
  const factory GetMyEventBookingsState.loading() = _Loading;
  const factory GetMyEventBookingsState.loaded({
    required List<Booking> bookings,
}) = _Loaded;
  const factory GetMyEventBookingsState.error({
    required Failure failure,
}) = _Error;
}
