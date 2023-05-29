import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/booking/booking.dart';
import '../../../domain/use_cases/deleteBooking.dart';
import '../../../domain/use_cases/user_bookings_by_event.dart';

part 'my_bookings_bloc.freezed.dart';
part 'my_bookings_event.dart';
part 'my_bookings_state.dart';

class MyBookingsBloc extends Bloc<MyBookingsEvent, MyBookingsState> {
  final UserBookingsByEvent userEventBookingsByEventUseCase;
  final DeleteBooking deleteBookingsUseCase;

  MyBookingsBloc(
      {required this.userEventBookingsByEventUseCase,
      required this.deleteBookingsUseCase})
      : super(const MyBookingsState.loading()) {
    on<_MyBookingsFetch>(_getMyBookings);
    on<_MyBookingsDelete>(_deleteBooking);
  }

  FutureOr<void> _getMyBookings(
    _MyBookingsFetch event,
    Emitter<MyBookingsState> emit,
  ) async {
    emit(const MyBookingsState.loading());
    final failureOrSuccess = await userEventBookingsByEventUseCase(
        EventBookingParams(eventId: event.eventId));
    failureOrSuccess.fold(
      (failure) {
        emit(MyBookingsState.error(failure: failure));
      },
      (bookings) {
        print(bookings);
        emit(MyBookingsState.loaded(bookings: bookings));
      },
    );
  }

  FutureOr<void> _deleteBooking(
    _MyBookingsDelete event,
    Emitter<MyBookingsState> emit,
  ) async {
    emit(const MyBookingsState.loading());
    final failureOrSuccess = await deleteBookingsUseCase(
        DeleteBookingParams(bookingId: event.bookingId));
    failureOrSuccess.fold(
      (failure) {
        emit(MyBookingsState.error(failure: failure));
      },
      (status) {
        add(MyBookingsEvent.fetch(eventId: event.eventId));
      },
    );
  }
}
