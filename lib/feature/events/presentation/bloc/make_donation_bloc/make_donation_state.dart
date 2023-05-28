part of 'make_donation_bloc.dart';

@freezed
class MakeDonationState with _$MakeDonationState {
  const factory MakeDonationState.loading() = _Loading;

  const factory MakeDonationState.loaded({
    required EventDonation eventDonation,
  }) = _Loaded;

  const factory MakeDonationState.error({
    required Failure failure,
  }) = _Error;
}
