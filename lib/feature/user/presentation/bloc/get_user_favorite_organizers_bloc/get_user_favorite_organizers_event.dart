part of 'get_user_favorite_organizers_bloc.dart';

@freezed
class GetUserFavoriteOrganizersEvent with _$GetUserFavoriteOrganizersEvent {
  const factory GetUserFavoriteOrganizersEvent.getFavoriteOrganizers() =
      _GetFavoriteOrganizers;
}
