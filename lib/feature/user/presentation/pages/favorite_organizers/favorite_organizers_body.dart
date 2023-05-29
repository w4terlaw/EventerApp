import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/common/widgets/loading_widget.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:eventer_app/feature/user/data/models/favorite_organizer/favorite_organizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app.dart';
import '../../../../../common/app_colors.dart';
import '../../../../../common/localization.dart';
import '../../../../../common/my_text_theme.dart';
import '../../../../../common/widgets/error_dialog_widget.dart';
import '../../../../../common/widgets/my_refresh_indicator.dart';
import '../../../../organizer/data/models/organizer/organizer.dart';
import '../../bloc/get_user_favorite_organizers_bloc/get_user_favorite_organizers_bloc.dart';

class FavoriteOrganizersPageBody extends StatelessWidget {
  const FavoriteOrganizersPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetUserFavoriteOrganizersBloc>().state;
    return MyRefreshIndicator(
      onRefresh: () => context.read<GetUserFavoriteOrganizersBloc>().add(
            const GetUserFavoriteOrganizersEvent.getFavoriteOrganizers(),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: state.when(
              loading: () => const Center(child: MyLoadingWidget()),
              loaded: (favoriteOrganizers) => FavoriteOrganizersList(
                favoriteOrganizers: favoriteOrganizers,
              ),
              error: (failure) => ErrorDialog(
                failure: failure,
                onPressed: () => context
                    .read<GetUserFavoriteOrganizersBloc>()
                    .add(const GetUserFavoriteOrganizersEvent
                        .getFavoriteOrganizers()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteOrganizersList extends StatelessWidget {
  final List<FavoriteOrganizer> favoriteOrganizers;

  const FavoriteOrganizersList({Key? key, required this.favoriteOrganizers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (favoriteOrganizers.isEmpty)
        ? SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Center(
              child: Column(
                children: [
                  VerticalSpace(320.h),
                  Text(
                    'У вас нет подписок',
                    style: appFont(
                        textStyle: Theme.of(context).textTheme.titleMedium,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryTextColor),
                  ),
                ],
              ),
            ))
        : Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => const VerticalSpace(16),
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: favoriteOrganizers.length,
              itemBuilder: (context, index) {
                final Organizer organizer = favoriteOrganizers[index].organizer;
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: CachedNetworkImage(
                                  imageUrl: organizer.logo,
                                  fit: BoxFit.cover,
                                  height: 70.h,
                                  width: 70.w,
                                )),
                            const HorizontalSpace(16),
                            SizedBox(
                              width: 150.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(organizer.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 28,
                              child: ElevatedButton(
                                onPressed: () {
                                  final int id = organizer.id;
                                  navigatorKey.currentState?.pushNamed(
                                      MyRouterConstants.organizerRoute,
                                      arguments: id);
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  backgroundColor:
                                      AppColors.secondaryColor.withOpacity(0.1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: Text(
                                  L10n.showMore,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          );
  }
}
