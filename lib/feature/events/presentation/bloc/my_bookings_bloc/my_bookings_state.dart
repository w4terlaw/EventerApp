part of 'my_bookings_bloc.dart';

@freezed
class MyBookingsState with _$MyBookingsState {
  const factory MyBookingsState.loading() = _Loading;

  const factory MyBookingsState.loaded({
    required List<Booking> bookings,
  }) = _Loaded;

  const factory MyBookingsState.error({
    required Failure failure,
  }) = _Error;
}
