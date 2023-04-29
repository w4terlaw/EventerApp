part of 'user_auth_bloc.dart';

@freezed
class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.userLogin({
    required String email,
    required String password,
  }) = _UserLogin;

  const factory UserAuthEvent.userRegistration() = _UserRegistration;
  const factory UserAuthEvent.userCheckAuthorized() = _UserCheckAuthorized;
}
