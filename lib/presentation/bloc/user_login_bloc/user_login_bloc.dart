import 'dart:async';

// import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/data/user_auth/usecases/user_login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_event.dart';

part 'user_login_state.dart';

part 'user_login_bloc.freezed.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  final UserLogin userLoginUsecase;

  UserLoginBloc(
      {required this.userLoginUsecase})
      : super(const UserLoginState.userLoginInitial()) {
    // LOGIN - get jwt
    on<_UserLogin>(_userLoginEvent);
  }

  FutureOr<void> _userLoginEvent(
      _UserLogin event, Emitter<UserLoginState> emit) async {
    emit(const UserLoginState.userLoginLoading());

    final failureOrSuccess = await userLoginUsecase(
        UserLoginParams(email: event.email, password: event.password));

    failureOrSuccess.fold(
      (failure) =>
          emit(UserLoginState.userLoginError(message: failure.getError())),
      (events) => emit(const UserLoginState.userLoginSuccess()),
    );
  }

  // String _mapFailure(Failure failure) {
  //   switch (failure.runtimeType) {
  //     case ServerFailure:
  //       return 'Не удалось подключиться к серверу';
  //     case SocketFailure:
  //       return 'Нет соединение с интернетом';
  //     case UnauthorizedFailure:
  //       return 'Неверный логин или пароль';
  //     default:
  //       return 'Unexpected Error';
  //   }
  // }
}
