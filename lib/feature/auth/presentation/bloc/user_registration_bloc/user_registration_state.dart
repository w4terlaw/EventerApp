part of 'user_registration_bloc.dart';

@freezed
class UserRegistrationState with _$UserRegistrationState {
  const factory UserRegistrationState.initial() = _Initial;

  const factory UserRegistrationState.loading() = _Loading;

  const factory UserRegistrationState.success() = _Loaded;

  const factory UserRegistrationState.error({
    required String failure,
  }) = _Error;
}
