import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../../../common/localization.dart';
import '../../../../../../common/my_text_theme.dart';
import '../../../../../../common/widgets/space_widgets.dart';

class AboutEvent extends StatelessWidget {
  final String description;

  const AboutEvent({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            L10n.description,
            style: appFont(
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.mainTextColor),
                height: 0),
          ),
          const VerticalSpace(8),
          ReadMoreText(
            description,
            trimLines: 1,
            colorClickableText: AppColors.secondaryColor,
            // trimMode: TrimMode.Length,
            style: TextStyle(
              fontSize: 16.sp,
              height: 1.6,
              letterSpacing: 0,
              color: AppColors.mainTextColor,
            ),

            trimCollapsedText: L10n.show,
            trimExpandedText: L10n.hide,
          ),
        ],
      ),
    );
  }
}
