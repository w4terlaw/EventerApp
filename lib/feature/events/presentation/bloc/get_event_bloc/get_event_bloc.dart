import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../user/data/models/event/event.dart';
import '../../../../user/domain/use_cases/get_event.dart';

part 'get_event_bloc.freezed.dart';
part 'get_event_event.dart';
part 'get_event_state.dart';

class GetEventBloc extends Bloc<GetEventEvent, GetEventState> {
  final GetEvent getEventUseCase;

  GetEventBloc({required this.getEventUseCase})
      : super(const GetEventState.loading()) {
    on<_GetEventById>(_getEventById);
  }

  FutureOr<void> _getEventById(
      _GetEventById event, Emitter<GetEventState> emit) async {
    emit(const GetEventState.loading());
    final eventOrFailure =
        await getEventUseCase(PageEventParams(id: event.eventId));
    eventOrFailure.fold(
      (failure) => emit(GetEventError(failure: failure)),
      (event) => emit(GetEventLoaded(event: event)),
    );
  }
}
