part of 'get_list_events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.fetch({
    required int page,
    required String name,
  }) = _EventsEventFetch;
}
