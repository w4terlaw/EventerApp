part of 'make_donation_bloc.dart';

@freezed
class MakeDonationEvent with _$MakeDonationEvent {
  const factory MakeDonationEvent.makeDonation({
    required int eventId,
    required double amount,
  }) = _MakeDonation;
}
