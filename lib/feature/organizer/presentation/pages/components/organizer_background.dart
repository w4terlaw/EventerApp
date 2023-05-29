import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/feature/organizer/presentation/pages/components/organizer_other_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/app_colors.dart';
import '../../../../../common/widgets/skeleton_widgets.dart';
import '../../../../../common/widgets/space_widgets.dart';
import '../../../data/models/organizer/organizer.dart';

class OrganizerBackground extends StatelessWidget {
  final Organizer organizer;

  const OrganizerBackground({Key? key, required this.organizer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const BackButton(color: AppColors.mainTextColor),
      title: Text(
        organizer.name,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      titleSpacing: 0,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_vert_sharp,
            color: AppColors.mainTextColor,
          ),
          onPressed: () {},
        ),
      ],
      expandedHeight: 380.h,
      // floating: false,
      pinned: true,
      elevation: 0,
      backgroundColor: AppColors.backgroundColor,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        stretchModes: const [StretchMode.zoomBackground],
        // title: Text("Collapsing Toolbar",
        //     style: Theme.of(context).textTheme.headlineLarge),
        background: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 235.h,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: organizer.background,
                    placeholder: (context, url) => const MySkeletonImage(),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 180),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 5, color: Colors.white)),
                        width: 100.w,
                        height: 100.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: organizer.logo,
                            placeholder: (context, url) =>
                                const MySkeletonImage(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const VerticalSpace(5),
            Text(
              organizer.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            // Text(
            //   organizer.name,
            //   style: Theme.of(context).textTheme.headlineLarge,
            // ),
            // const VerticalSpace(15),
            OrganizerOtherInfo(
              organizerId: organizer.id,
            )
          ],
        ),
      ),
    );
  }
}
