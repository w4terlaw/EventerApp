part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.loading() = _EventsStateLoading;
  const factory EventsState.loaded({required List<Event> events}) = _EventsStateLoaded;
  const factory EventsState.error({required String message}) = _EventsStateError;
}
