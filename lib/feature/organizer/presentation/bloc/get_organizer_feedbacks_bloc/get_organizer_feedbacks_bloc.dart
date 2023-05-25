import 'dart:async';

import 'package:eventer_app/feature/organizer/data/models/feedback/feedback.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/use_cases/get_organizer_feedbacks.dart';

part 'get_organizer_feedbacks_event.dart';

part 'get_organizer_feedbacks_state.dart';

part 'get_organizer_feedbacks_bloc.freezed.dart';

class GetOrganizerFeedbacksBloc
    extends Bloc<GetOrganizerFeedbacksEvent, GetOrganizerFeedbacksState> {
  final GetOrganizerFeedbacks getOrganizerFeedbacksUseCase;

  GetOrganizerFeedbacksBloc({required this.getOrganizerFeedbacksUseCase})
      : super(const GetOrganizerFeedbacksState.loading()) {
    on<_GetFeedbacks>(_getFeedbacks);
  }

  Future<FutureOr<void>> _getFeedbacks(GetOrganizerFeedbacksEvent event,
      Emitter<GetOrganizerFeedbacksState> emit) async {
    emit(const GetOrganizerFeedbacksState.loading());
    final failureOfFeedbacks = await getOrganizerFeedbacksUseCase(
        OrganizerFeedbacks(organizerId: event.organizerId));
    failureOfFeedbacks.fold(
      (failure) => emit(
        GetOrganizerFeedbacksState.error(failure: failure),
      ),
      (feedbacks) => emit(
        GetOrganizerFeedbacksState.loaded(feedbacks: feedbacks),
      ),
    );
  }
}
