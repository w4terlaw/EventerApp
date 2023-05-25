import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/organizer/organizer.dart';
import '../../../domain/use_cases/get_organizer.dart';

part 'get_organizer_event.dart';

part 'get_organizer_state.dart';

part 'get_organizer_bloc.freezed.dart';

class GetOrganizerBloc extends Bloc<GetOrganizerEvent, GetOrganizerState> {
  final GetOrganizer getOrganizerUseCase;

  GetOrganizerBloc({required this.getOrganizerUseCase})
      : super(const GetOrganizerState.loading()) {
    on<_Get>(_getOrganizer);
  }

  Future<FutureOr<void>> _getOrganizer(
      _Get event, Emitter<GetOrganizerState> emit) async {
    emit(const GetOrganizerState.loading());
    final failureOrOrganizer = await getOrganizerUseCase(
        OrganizerParams(organizerId: event.organizerId));
    failureOrOrganizer.fold(
      (failure) => emit(GetOrganizerState.error(failure: failure)),
      (organizer) => emit(GetOrganizerState.loaded(organizer: organizer)),
    );
  }
}
