import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/presentation/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchWidget extends StatelessWidget {
  final Function(String) onSubmitted;
  final bool active;

  const MySearchWidget({
    Key? key,
    required this.onSubmitted,
    this.active = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/search.png',
            width: 24.0,
            color: (active == false) ? Colors.white : AppColors.secondaryColor,
          ),
          const HorizontalSpace(10),
          Container(
            width: 1.5,
            height: 20,
            color: (active == false)
                ? AppColors.appBarDeactivateTextColor
                : AppColors.secondaryColor,
          ),
          (active == false)
              ? Expanded(
                  child: Row(
                    children: [
                      const HorizontalSpace(12),
                      Expanded(
                        child: Text(
                          L10n.search,
                          style: appFont(
                            textStyle:
                                Theme.of(context).textTheme.headlineLarge,
                            fontWeight: FontWeight.w300,
                            color: AppColors.appBarDeactivateTextColor,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: TextField(
                    style: appFont(
                      textStyle: Theme.of(context).textTheme.headlineLarge,
                      fontWeight: FontWeight.w300,
                      color: AppColors.secondaryTextColor,
                      fontSize: 24,
                    ),
                    cursorColor: AppColors.secondaryColor,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: L10n.search,
                      hintStyle: appFont(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                        fontWeight: FontWeight.w300,
                        color: AppColors.secondaryTextColor,
                        fontSize: 24,
                      ),
                    ),
                    onSubmitted: (value) => onSubmitted(value),
                  ),
                ),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 8),
            // width: 75,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xff5668ff),
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/filter.png',
                  width: 24.0,
                  color: (active == false)
                      ? const Color(0xffA29EF0)
                      : Colors.white,
                ),
                const HorizontalSpace(4),
                Text(
                  "Filters",
                  style: appFont(
                    textStyle: Theme.of(context).textTheme.labelSmall,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
