import 'dart:async';

import 'package:eventer_app/common/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final SharedPreferences sharedPreferences;

  AuthenticationBloc({required this.sharedPreferences})
      : super(AuthenticationLoadingState()) {
    on<CheckAuthenticationEvent>(_checkAuthentication);
    _init();
  }

  void _init() async {
    // await Future.delayed(const Duration(seconds: 5));
    add(CheckAuthenticationEvent());
  }

  FutureOr<void> _checkAuthentication(
      CheckAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    if (sharedPreferences.getString(CacheConstants.CACHED_ACCESS_TOKEN) !=
        null) {
      print('UserLOADEDDD');
      print(sharedPreferences.getString(CacheConstants.CACHED_ACCESS_TOKEN));
      emit(AuthenticationLoadedState());
    } else {
      emit(AuthenticationEmptyState());
    }
  }
}
