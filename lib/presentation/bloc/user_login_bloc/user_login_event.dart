part of 'user_login_bloc.dart';

@freezed
class UserLoginEvent with _$UserLoginEvent {
  const factory UserLoginEvent.userLogin({
    required String email,
    required String password,
  }) = _UserLogin;
}
