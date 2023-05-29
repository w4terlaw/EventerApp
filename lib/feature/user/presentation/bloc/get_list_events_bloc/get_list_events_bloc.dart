import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/event/event.dart';
import '../../../domain/use_cases/get_list_events.dart';

part 'get_list_events_bloc.freezed.dart';
part 'get_list_events_event.dart';
part 'get_list_events_state.dart';

class GetListEventsBloc extends Bloc<EventsEvent, EventsState> {
  final GetListEvents getEventsUseCase;

  GetListEventsBloc({
    required this.getEventsUseCase,
  }) : super(const EventsState.loading()) {
    on<_EventsEventFetch>(_eventsFetch);
    // _init();
  }

  // void _init() {
  //   add(const EventsEvent.fetch(page: 1, name: ''));
  // }

  FutureOr<void> _eventsFetch(
      _EventsEventFetch event, Emitter<EventsState> emit) async {
    emit(const EventsState.loading());

    final failureOrEvents = await getEventsUseCase(
        PageEventParams(page: event.page, name: event.name));
    failureOrEvents.fold(
      (failure) {
        emit(EventsState.error(failure: failure));
      },
      (events) {
        emit(EventsState.loaded(events: events));
      },
    );
  }

// String _mapFailure(Failure failure) {
//   switch (failure.runtimeType) {
//     case ServerFailure:
//       return 'Не удалось подключиться к серверу';
//     case SocketFailure:
//       return 'Не удалось подключиться к серверу /socket';
//     // case UnauthorizedFailure:
//     //   return 'Token has been expired';
//     default:
//       return 'Unexpected Error';
//   }
// }
}
