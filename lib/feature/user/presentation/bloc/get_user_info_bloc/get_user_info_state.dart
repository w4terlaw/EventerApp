part of 'get_user_info_bloc.dart';

@freezed
class GetUserInfoState with _$GetUserInfoState {
  const factory GetUserInfoState.loading() = _Initial;

  const factory GetUserInfoState.loaded({
    required User user,
  }) = _Loaded;

  const factory GetUserInfoState.error({
    required Failure failure,
  }) = _Error;
}
