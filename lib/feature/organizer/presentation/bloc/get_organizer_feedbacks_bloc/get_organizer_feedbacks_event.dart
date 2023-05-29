part of 'get_organizer_feedbacks_bloc.dart';

@freezed
class GetOrganizerFeedbacksEvent with _$GetOrganizerFeedbacksEvent {
  const factory GetOrganizerFeedbacksEvent.getFeedbacks({
    required int organizerId,
  }) = _GetFeedbacks;
}
