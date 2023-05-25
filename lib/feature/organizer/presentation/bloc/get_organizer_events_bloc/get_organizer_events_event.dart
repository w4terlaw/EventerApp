part of 'get_organizer_events_bloc.dart';

@freezed
class GetOrganizerEventsEvent with _$GetOrganizerEventsEvent {
  const factory GetOrganizerEventsEvent.getEvents({
    required int page,
    required int organizerId,
}) = _GetEvents;
}
