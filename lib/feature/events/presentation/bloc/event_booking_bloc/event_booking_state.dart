part of 'event_booking_bloc.dart';

@freezed
class EventBookingState with _$EventBookingState {
  const factory EventBookingState.initial() = EventBookingInitial;

  const factory EventBookingState.loading() = EventBookingLoading;

  const factory EventBookingState.success() = EventBookingSuccess;

  const factory EventBookingState.error() = EventBookingError;
}
