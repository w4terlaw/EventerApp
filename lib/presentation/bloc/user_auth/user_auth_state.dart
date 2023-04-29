part of 'user_auth_bloc.dart';

@freezed
class UserAuthState with _$UserAuthState {
  const factory UserAuthState.userLoading() = _UserLoading;

  const factory UserAuthState.userLoginSuccess() = _UserLoginSuccess;

  const factory UserAuthState.userLoginFailed() = _UserLoginFailed;

  const factory UserAuthState.userError({required String message}) = _UserError;
}
