part of 'user_login_bloc.dart';

@freezed
class UserLoginState with _$UserLoginState {
  const factory UserLoginState.userLoginInitial() = UserLoginInitial;

  const factory UserLoginState.userLoginLoading() = UserLoginLoading;

  const factory UserLoginState.userLoginSuccess() = UserLoginSuccess;

  const factory UserLoginState.userLoginError({required String message}) =
      UserLoginError;
}
