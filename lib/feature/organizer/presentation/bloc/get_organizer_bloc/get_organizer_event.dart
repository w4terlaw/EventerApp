part of 'get_organizer_bloc.dart';

@freezed
class GetOrganizerEvent with _$GetOrganizerEvent {
  const factory GetOrganizerEvent.get({
    required int organizerId,
  }) = _Get;
}
