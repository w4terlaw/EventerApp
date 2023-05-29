import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/booking/booking.dart';
import '../../../domain/use_cases/user_bookings.dart';

part 'user_bookings_bloc.freezed.dart';
part 'user_bookings_event.dart';
part 'user_bookings_state.dart';

class UserBookingsBloc extends Bloc<UserBookingsEvent, UserBookingsState> {
  final UserBookings userBookingsUseCase;

  UserBookingsBloc({required this.userBookingsUseCase})
      : super(const UserBookingsState.loading()) {
    on<_GetBookings>(_getBookings);
  }

  FutureOr<void> _getBookings(event, Emitter<UserBookingsState> emit) async {
    emit(const UserBookingsState.loading());
    final failureOrUserBookings = await userBookingsUseCase();
    failureOrUserBookings.fold(
      (failure) => emit(UserBookingsState.error(failure: failure)),
      (bookings) => emit(UserBookingsState.loaded(bookings: bookings)),
    );
  }
}
