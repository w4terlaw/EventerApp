import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/user/user.dart';
import '../../../domain/use_cases/get_user_info.dart';

part 'get_user_info_bloc.freezed.dart';
part 'get_user_info_event.dart';
part 'get_user_info_state.dart';

class GetUserInfoBloc extends Bloc<GetUserInfoEvent, GetUserInfoState> {
  final GetUserInfo getUserInfoUseCase;

  GetUserInfoBloc({required this.getUserInfoUseCase})
      : super(const GetUserInfoState.loading()) {
    on<_GetInfo>(_getUserInfo);
  }

  Future<FutureOr<void>> _getUserInfo(
      _GetInfo event, Emitter<GetUserInfoState> emit) async {
    emit(const GetUserInfoState.loading());
    final failureOrUser = await getUserInfoUseCase();
    failureOrUser.fold(
      (failure) => emit(GetUserInfoState.error(failure: failure)),
      (user) => emit(GetUserInfoState.loaded(user: user)),
    );
  }
}
