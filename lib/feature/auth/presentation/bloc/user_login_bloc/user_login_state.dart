part of 'user_login_bloc.dart';

@freezed
class UserLoginState with _$UserLoginState {
  const factory UserLoginState.initial() = UserLoginInitial;

  const factory UserLoginState.loading() = UserLoginLoading;

  const factory UserLoginState.success() = UserLoginSuccess;

  const factory UserLoginState.error({required String message}) =
      UserLoginError;
}
