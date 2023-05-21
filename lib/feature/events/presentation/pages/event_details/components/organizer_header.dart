import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../../../common/localization.dart';
import '../../../../../../common/widgets/space_widgets.dart';
import '../../../../../user/data/models/event.dart' as model;

class OrganizerHeader extends StatelessWidget {
  final model.Organizer organizer;

  const OrganizerHeader({super.key, required this.organizer});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: organizer.logo,
                  fit: BoxFit.cover,
                  height: 48.h,
                  width: 48.w,
                )),
            const HorizontalSpace(14),
            SizedBox(
              width: 150.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(organizer.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium),
                  Text(
                    L10n.organizer,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.secondaryText2Color,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 28,
          child: ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/organizer', arguments: organizer.id);},
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: AppColors.secondaryColor.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              L10n.subscribe,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
