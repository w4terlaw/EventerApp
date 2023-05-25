import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/booking.dart';
import '../../../domain/use_cases/get_my_event_bookings.dart';

part 'get_my_event_bookings_event.dart';

part 'get_my_event_bookings_state.dart';

part 'get_my_event_bookings_bloc.freezed.dart';

class GetMyEventBookingsBloc
    extends Bloc<GetMyEventBookingsEvent, GetMyEventBookingsState> {
  final GetMyEventBookings getMyEventBookings;

  GetMyEventBookingsBloc({required this.getMyEventBookings})
      : super(const GetMyEventBookingsState.loading()) {
    on<_GetMyEventBookingsFetch>(_getMyEventBookings);
  }

  FutureOr<void> _getMyEventBookings(
    _GetMyEventBookingsFetch event,
    Emitter<GetMyEventBookingsState> emit,
  ) async {
    emit(const GetMyEventBookingsState.loading());
    final failureOrSuccess =
        await getMyEventBookings(EventBookingParams(eventId: event.eventId));
    failureOrSuccess.fold(
      (failure) {
        print(failure);
        emit(GetMyEventBookingsState.error(failure: failure));
      },
      (bookings) {
        print(bookings);
        emit(GetMyEventBookingsState.loaded(bookings: bookings));
      },
    );
  }
}
