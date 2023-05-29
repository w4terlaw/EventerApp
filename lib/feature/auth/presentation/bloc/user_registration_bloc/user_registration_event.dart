part of 'user_registration_bloc.dart';

@freezed
class UserRegistrationEvent with _$UserRegistrationEvent {
  const factory UserRegistrationEvent.userRegistration({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) = _UserRegistration;
}
