import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/localization.dart';
import '../../../../common/widgets/skeleton_widgets.dart';
import '../../../../common/widgets/space_widgets.dart';

class SkeletonOrganizerInfo extends StatelessWidget {
  const SkeletonOrganizerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: null,
          child: Text(
            L10n.unsubscribe,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey,
                ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MySkeletonLine(
                  width: 60,
                ),
                const VerticalSpace(6),
                Text(
                  L10n.organizerCountSubscribers,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.secondaryTextColor,
                      ),
                ),
              ],
            ),
            const HorizontalSpace(10),
            Container(
              width: 1,
              height: 40,
              color: Colors.black12,
            ),
            const HorizontalSpace(10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '1',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const VerticalSpace(6),
                Text(
                  L10n.organizerCountEvents,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.secondaryTextColor,
                      ),
                ),
              ],
            ),
            const HorizontalSpace(10),
            Container(
              width: 1,
              height: 40,
              color: Colors.black12,
            ),
            const HorizontalSpace(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () => print('Подробнее'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.info_outline,
                          color: AppColors.mainTextColor,
                        ),
                        const VerticalSpace(4),
                        Text(
                          L10n.organizerAbout,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: AppColors.secondaryTextColor,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.chevron_right_outlined,
                  size: 22,
                  color: AppColors.secondaryTextColor.withOpacity(0.8),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

// Column(
// children: const [
// MySkeletonLine(
// width: 60,
// ),
// VerticalSpace(6),
// MySkeletonLine(
// width: 100,
// ),
// ],
// );
