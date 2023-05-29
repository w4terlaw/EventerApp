part of 'user_bookings_bloc.dart';

@freezed
class UserBookingsState with _$UserBookingsState {
  const factory UserBookingsState.loading() = _Loading;

  const factory UserBookingsState.loaded({
    required List<Booking> bookings,
  }) = _Loaded;

  const factory UserBookingsState.error({
    required Failure failure,
  }) = _Error;
}
