import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/event/event.dart';
import '../../../domain/use_cases/get_organizer_events.dart';

part 'get_organizer_events_bloc.freezed.dart';
part 'get_organizer_events_event.dart';
part 'get_organizer_events_state.dart';

class GetOrganizerEventsBloc
    extends Bloc<GetOrganizerEventsEvent, GetOrganizerEventsState> {
  final GetOrganizerEvents getOrganizerEventsUseCase;

  GetOrganizerEventsBloc({required this.getOrganizerEventsUseCase})
      : super(const GetOrganizerEventsState.loading()) {
    on<_GetEvents>(_getEvents);
  }

  Future<FutureOr<void>> _getEvents(
      _GetEvents event, Emitter<GetOrganizerEventsState> emit) async {
    emit(const GetOrganizerEventsState.loading());
    final failureOrOrganizerEvents = await getOrganizerEventsUseCase(
        OrganizerEvents(page: event.page, organizerId: event.organizerId));

    failureOrOrganizerEvents.fold(
      (failure) => emit(GetOrganizerEventsState.error(failure: failure)),
      (events) => emit(GetOrganizerEventsState.loaded(events: events)),
    );
  }
}
