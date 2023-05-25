part of 'get_organizer_info_bloc.dart';

@freezed
class GetOrganizerOtherInfoState with _$GetOrganizerOtherInfoState {
  const factory GetOrganizerOtherInfoState.loading() = _Loading;

  const factory GetOrganizerOtherInfoState.loaded({
    required OrganizerInfo organizerInfo,
  }) = _Loaded;

  const factory GetOrganizerOtherInfoState.error({
    required Failure failure,
  }) = _Error;
}
