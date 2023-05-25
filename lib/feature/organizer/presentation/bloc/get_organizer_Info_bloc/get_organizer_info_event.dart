part of 'get_organizer_info_bloc.dart';

@freezed
class GetOrganizerOtherInfoEvent with _$GetOrganizerOtherInfoEvent {
  const factory GetOrganizerOtherInfoEvent.getInfo({
    required int organizerId,
    @Default(false) bool toggleSubscribe,
  }) = _GetInfo;
}
