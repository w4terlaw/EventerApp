import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../user/data/models/event.dart';
import '../../../../user/domain/use_cases/get_event.dart';

part 'get_event_bloc.freezed.dart';

part 'get_event_event.dart';

part 'get_event_state.dart';

class GetEventBloc extends Bloc<GetEventEvent, GetEventState> {
  final GetEvent getEventUsecase;

  GetEventBloc({required this.getEventUsecase})
      : super(const GetEventState.loading()) {
    on<_GetEventById>(_getEventById);
  }

  FutureOr<void> _getEventById(
      _GetEventById event, Emitter<GetEventState> emit) async {
    final eventOrFailure = await getEventUsecase(PageEventParams(id: event.id));
    eventOrFailure.fold(
      (failure) => emit(GetEventError(error: failure.getError())),
      (event) => emit(GetEventLoaded(event: event)),
    );
  }
}
