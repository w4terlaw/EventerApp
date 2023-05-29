part of 'get_event_bloc.dart';

@freezed
class GetEventEvent with _$GetEventEvent {
  const factory GetEventEvent.byId({
    required int eventId,
  }) = _GetEventById;
}
