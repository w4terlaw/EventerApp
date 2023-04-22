import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failure.dart';
import '../../../data/events_get_main_info/usecases/get_all_events.dart';
import '/data/events_get_main_info/models/event.dart';

part 'events_event.dart';

part 'events_state.dart';

part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final GetEvents usecaseGetEvents;

  EventsBloc({
    required this.usecaseGetEvents,
  }) : super(const EventsState.loading()) {
    on<EventsEventFetch>(_eventsFetch);
  }

  FutureOr<void> _eventsFetch(
      EventsEventFetch event, Emitter<EventsState> emit) async {
    emit(const EventsState.loading());

    final failureOrEvents = await usecaseGetEvents(
        PageEventParams(page: event.page, name: event.name));
    failureOrEvents.fold(
      (failure) {
        emit(EventsState.error(message: _mapFailure(failure)));
      },
      (events) {
        emit(EventsState.loaded(events: events));
      },
    );

    // try {
    //   List<Event> _eventsLoaded = await eventsRepo.getEvents(event.page, event.name);
    //   emit(EventsStateLoaded(events: _eventsLoaded));
    // } catch(_) {
    //   emit(const EventsState.error());
    // }
  }
  String _mapFailure(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Не удалось подключиться к серверу';
      case SocketFailure:
        return 'Нет интернет соединения';
      default:
        return 'Unexpected Error';
    }
  }
}
