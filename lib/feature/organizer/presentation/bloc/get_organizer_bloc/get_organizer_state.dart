part of 'get_organizer_bloc.dart';

@freezed
class GetOrganizerState with _$GetOrganizerState {
  const factory GetOrganizerState.loading() = _Loading;

  const factory GetOrganizerState.loaded({
    required Organizer organizer,
  }) = _Loaded;

  const factory GetOrganizerState.error({
    required Failure failure,
  }) = _Error;
}
