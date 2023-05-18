import 'package:cached_network_image/cached_network_image.dart';
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(organizer.name,
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
          ],
        ),
        SizedBox(
          width: 120,
          height: 28,
          child: ElevatedButton(
            onPressed: () {},
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
