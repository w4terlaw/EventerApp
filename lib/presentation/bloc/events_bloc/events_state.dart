part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.loading() = EventsStateLoading;
  const factory EventsState.loaded({required List<Event> events}) = EventsStateLoaded;
  const factory EventsState.error({required String message}) = EventsStateError;
}
