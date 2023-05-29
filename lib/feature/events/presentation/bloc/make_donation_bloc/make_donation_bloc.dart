import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eventer_app/app.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/feature/events/data/models/event_donation/event_donation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/constants.dart';
import '../../../domain/use_cases/makeDonation.dart';

part 'make_donation_bloc.freezed.dart';
part 'make_donation_event.dart';
part 'make_donation_state.dart';

class MakeDonationBloc extends Bloc<MakeDonationEvent, MakeDonationState> {
  final MakeDonation makeDonationUseCase;

  MakeDonationBloc({required this.makeDonationUseCase})
      : super(const MakeDonationState.loading()) {
    on<_MakeDonation>(_makeDonation);
  }

  FutureOr<void> _makeDonation(
      _MakeDonation event, Emitter<MakeDonationState> emit) async {
    emit(const MakeDonationState.loading());
    final failureOrEventDonation = await makeDonationUseCase(
        MakeDonationParams(eventId: event.eventId, amount: event.amount));

    failureOrEventDonation.fold(
      (failure) => emit(
        MakeDonationState.error(failure: failure),
      ),
      (eventDonation) {
        navigatorKey.currentState!.pop();
        emit(MakeDonationState.loaded(eventDonation: eventDonation));
        navigatorKey.currentState!
            .pushNamed(MyRouterConstants.donationSplashScreen);
      },
    );
  }
}
