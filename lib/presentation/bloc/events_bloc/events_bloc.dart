import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import '../../../core/error/failure.dart';
import '../../../data/events_get_main_info/usecases/get_all_events.dart';
import '../../../data/events_get_main_info/models/event.dart';

part 'events_event.dart';

part 'events_state.dart';

part 'events_bloc.freezed.dart';

EventTransformer<E> debounceDroppable<E>(Duration duration) {
  return (event, mapper) {
    return droppable<E>().call(event.debounce(duration), mapper);
  };
}

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final GetEvents usecaseGetEvents;

  EventsBloc({
    required this.usecaseGetEvents,
  }) : super(const EventsState.loading()) {
    on<EventsEventFetch>(_eventsFetch, transformer: debounceDroppable(
      const Duration(seconds: 2),
    ),);
    _init();
  }

  void _init() {
    add(const EventsEvent.fetch(page: 1, name: ''));
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
  }

  String _mapFailure(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Не удалось подключиться к серверу';
      case SocketFailure:
        return 'Не удалось подключиться к серверу /socket';
      default:
        return 'Unexpected Error';
    }
  }
}
