part of 'get_user_favorite_organizers_bloc.dart';

@freezed
class GetUserFavoriteOrganizersState with _$GetUserFavoriteOrganizersState {
  const factory GetUserFavoriteOrganizersState.loading() = _Initial;

  const factory GetUserFavoriteOrganizersState.loaded({
    required List<FavoriteOrganizer> favoriteOrganizers,
  }) = _Loaded;

  const factory GetUserFavoriteOrganizersState.error({
    required Failure failure,
  }) = _Error;
}
