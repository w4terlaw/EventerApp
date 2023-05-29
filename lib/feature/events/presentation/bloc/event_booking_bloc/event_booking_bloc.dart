import 'dart:async';

import 'package:eventer_app/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/event_dates_checkbox.dart';
import '../../../domain/use_cases/create_event_booking.dart';

part 'event_booking_bloc.freezed.dart';
part 'event_booking_event.dart';
part 'event_booking_state.dart';

class EventBookingBloc extends Bloc<EventBookingEvent, EventBookingState> {
  final CreateEventBooking eventBookingUseCase;

  EventBookingBloc({required this.eventBookingUseCase})
      : super(const EventBookingState.initial()) {
    on<_EventBooking>(_eventBooking);
  }

  FutureOr<void> _eventBooking(
      _EventBooking event, Emitter<EventBookingState> emit) async {
    emit(const EventBookingState.loading());
    final failureOrSuccess = await eventBookingUseCase(EventBookingParams(
        eventId: event.eventId, eventDates: event.eventDates));
    failureOrSuccess.fold(
      (l) => emit(
        const EventBookingState.error(),
      ),
      (r) {
        navigatorKey.currentState!.pop();
        emit(const EventBookingState.success());
      },
    );
  }
}
