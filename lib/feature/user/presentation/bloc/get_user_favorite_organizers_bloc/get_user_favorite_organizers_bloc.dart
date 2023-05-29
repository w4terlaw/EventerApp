import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eventer_app/feature/user/data/models/favorite_organizer/favorite_organizer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/use_cases/get_user_favorite_organizers.dart';

part 'get_user_favorite_organizers_bloc.freezed.dart';
part 'get_user_favorite_organizers_event.dart';
part 'get_user_favorite_organizers_state.dart';

class GetUserFavoriteOrganizersBloc extends Bloc<GetUserFavoriteOrganizersEvent,
    GetUserFavoriteOrganizersState> {
  final GetUserFavoriteOrganizers getUserFavoriteOrganizersUseCase;

  GetUserFavoriteOrganizersBloc(
      {required this.getUserFavoriteOrganizersUseCase})
      : super(const GetUserFavoriteOrganizersState.loading()) {
    on<_GetFavoriteOrganizers>(_getFavoriteOrganizers);
  }

  FutureOr<void> _getFavoriteOrganizers(_GetFavoriteOrganizers event,
      Emitter<GetUserFavoriteOrganizersState> emit) async {
    emit(const GetUserFavoriteOrganizersState.loading());
    final failureOrFavoriteOrganizer = await getUserFavoriteOrganizersUseCase();
    failureOrFavoriteOrganizer.fold(
      (failure) => emit(GetUserFavoriteOrganizersState.error(failure: failure)),
      (favoriteOrganizers) => emit(GetUserFavoriteOrganizersState.loaded(
          favoriteOrganizers: favoriteOrganizers)),
    );
  }
}
