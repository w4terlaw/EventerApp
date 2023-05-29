part of 'get_organizer_events_bloc.dart';

@freezed
class GetOrganizerEventsState with _$GetOrganizerEventsState {
  const factory GetOrganizerEventsState.loading() = _Loading;

  const factory GetOrganizerEventsState.loaded({
    required List<Event> events,
  }) = _Loaded;

  const factory GetOrganizerEventsState.error({
    required Failure failure,
  }) = _Error;
}
