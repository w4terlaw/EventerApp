import 'dart:async';

import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/data/authentication/usecases/user_login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_auth_event.dart';

part 'user_auth_state.dart';

part 'user_auth_bloc.freezed.dart';

class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
  final UserLogin userLoginUsecase;
  final SharedPreferences sharedPreferences;

  UserAuthBloc(
      {required this.userLoginUsecase, required this.sharedPreferences})
      : super(const UserAuthState.userLoading()) {
    // LOGIN - get jwt
    on<_UserLogin>(_userLogin);

    // REGISTRATION - get jwt
    on<_UserRegistration>(_userRegistration);

    // USER AUTHORIZED? - get jwt
    on<_UserCheckAuthorized>(_userCheckAuthorized);

    _init();
  }

  void _init() {
    add(const UserAuthEvent.userCheckAuthorized());
  }

  FutureOr<void> _userLogin(
      _UserLogin event, Emitter<UserAuthState> emit) async {
    emit(const UserAuthState.userLoading());

    final failureOrSuccess = await userLoginUsecase(
        UserLoginParams(email: event.email, password: event.password));

    failureOrSuccess.fold(
      (failure) => emit(UserAuthState.userError(message: _mapFailure(failure))),
      (events) => emit(const UserAuthState.userLoginSuccess()),
    );
  }

  FutureOr<void> _userRegistration(
      _UserRegistration event, Emitter<UserAuthState> emit) async {}

  FutureOr<void> _userCheckAuthorized(
      _UserCheckAuthorized event, Emitter<UserAuthState> emit) async {
      print('UserLOADEDDD');
    emit(const UserAuthState.userLoading());
    print(sharedPreferences.getString(CacheConstants.CACHED_ACCESS_TOKEN));
    if (sharedPreferences.getString(CacheConstants.CACHED_ACCESS_TOKEN) !=
        null) {
      emit(const UserAuthState.userLoginSuccess());
    } else {
      emit(const UserAuthState.userLoginFailed());
    }
  }

  String _mapFailure(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Не удалось подключиться к серверу';
      case SocketFailure:
        return 'Нет соединение с интернетом';
      default:
        return 'Unexpected Error';
    }
  }
}
