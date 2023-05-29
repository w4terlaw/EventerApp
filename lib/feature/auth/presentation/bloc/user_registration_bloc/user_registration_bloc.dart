import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app.dart';
import '../../../domain/use_cases/user_registration.dart';

part 'user_registration_bloc.freezed.dart';
part 'user_registration_event.dart';
part 'user_registration_state.dart';

class UserRegistrationBloc
    extends Bloc<UserRegistrationEvent, UserRegistrationState> {
  final UserRegistration userRegistrationUseCase;

  UserRegistrationBloc({required this.userRegistrationUseCase})
      : super(const UserRegistrationState.initial()) {
    on<_UserRegistration>(_userRegistration);
  }

  FutureOr<void> _userRegistration(
      event, Emitter<UserRegistrationState> emit) async {
    emit(const UserRegistrationState.loading());
    final failureOrSuccess = await userRegistrationUseCase(
      UserRegistrationParams(
        lastName: event.lastName,
        firstName: event.firstName,
        email: event.email,
        password: event.password,
      ),
    );
    failureOrSuccess.fold(
      (failure) => UserRegistrationState.error(failure: failure.getError()),
      (r) {
        emit(const UserRegistrationState.success());
        navigatorKey.currentState!.pop();
      },
    );
  }
}
