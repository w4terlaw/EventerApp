part of 'get_organizer_feedbacks_bloc.dart';

@freezed
class GetOrganizerFeedbacksState with _$GetOrganizerFeedbacksState {
  const factory GetOrganizerFeedbacksState.loading() = _Loading;

  const factory GetOrganizerFeedbacksState.loaded({
    required List<Feedback> feedbacks,
  }) = _Loaded;

  const factory GetOrganizerFeedbacksState.error({
    required Failure failure,
  }) = _Error;
}
