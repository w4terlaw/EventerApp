import 'package:cached_network_image/cached_network_image.dart';
import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/widgets/button_widgets.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:eventer_app/feature/user/presentation/bloc/get_user_info_bloc/get_user_info_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/my_text_theme.dart';
import '../../../../../common/widgets/skeleton_widgets.dart';

class ProfilePageBody extends StatelessWidget {
  ProfilePageBody({Key? key}) : super(key: key);

  final List<String> _interest = ['Фильмы', 'Концерты', 'Музыка', 'Другое'];

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetUserInfoBloc>().state;
    return SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const VerticalSpace(10),
                          state.maybeWhen(
                            loaded: (user) => ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: SizedBox(
                                width: 80,
                                height: 80,
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl: user.avatar,
                                  placeholder: (context, url) =>
                                      const MySkeletonImage(),
                                ),
                              ),
                            ),
                            orElse: () => ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: const SizedBox(
                                width: 80,
                                height: 80,
                                child: MySkeletonImage(),
                              ),
                            ),
                          ),
                          const VerticalSpace(10),
                          state.maybeWhen(
                            loaded: (user) => Text(
                              '${user.lastName} ${user.firstName}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            orElse: () => const MySkeletonLine(
                              height: 20,
                              width: 100,
                            ),
                          ),
                          const VerticalSpace(5),
                          state.maybeWhen(
                              loaded: (user) => Text(
                                    user.email,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color:
                                                AppColors.secondaryTextColor),
                                  ),
                              orElse: () => const MySkeletonLine(
                                    height: 16,
                                    width: 80,
                                  )),
                          const VerticalSpace(24),
                          // SizedBox(
                          //   width: 280.h,
                          //   child: MyOutlinedButton(
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         Image.asset(
                          //           'assets/icons/redact.png',
                          //           height: 20,
                          //           width: 20,
                          //           color: AppColors.mainTextColor,
                          //         ),
                          //         const HorizontalSpace(10),
                          //         Text(
                          //           'РЕДАКТИРОВАТЬ',
                          //           style:
                          //               Theme.of(context).textTheme.labelLarge,
                          //         ),
                          //       ],
                          //     ),
                          //     onPressed: () {},
                          //   ),
                          // ),
                          // const VerticalSpace(24),
                        ],
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     Expanded(
                  //       child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             L10n.description,
                  //             style: appFont(
                  //                 textStyle: Theme.of(context)
                  //                     .textTheme
                  //                     .titleLarge!
                  //                     .copyWith(color: AppColors.mainTextColor),
                  //                 height: 0),
                  //           ),
                  //           const VerticalSpace(10),
                  //           ReadMoreText(
                  //             'description',
                  //             trimLines: 1,
                  //             colorClickableText: AppColors.secondaryColor,
                  //             // trimMode: TrimMode.Length,
                  //             style: TextStyle(
                  //               fontSize: 16.sp,
                  //               height: 1.6,
                  //               letterSpacing: 0,
                  //               color: AppColors.mainTextColor,
                  //             ),
                  //
                  //             trimCollapsedText: L10n.show,
                  //             trimExpandedText: L10n.hide,
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const VerticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Интересы',
                                  style: appFont(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              color: AppColors.mainTextColor),
                                      height: 0),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor
                                          .withOpacity(0.05),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/edit.png',
                                          height: 16,
                                          width: 16,
                                          color: AppColors.secondaryColor,
                                        ),
                                        const HorizontalSpace(6),
                                        Text(
                                          'ИЗМЕНИТЬ',
                                          style: appFont(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                              color: AppColors.secondaryColor,
                                              fontWeight: FontWeight.w400,
                                              height: 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const VerticalSpace(10),
                            Wrap(
                              spacing: 6.0,
                              runSpacing: 6.0,
                              children: List<Widget>.generate(
                                _interest.length,
                                (int index) {
                                  return chip(context, _interest[index], index);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget chip(context, String label, int colorIndex) {
    return Chip(
      labelPadding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 2, bottom: 2),
      // avatar: CircleAvatar(
      //   backgroundColor: Colors.grey.shade600,
      //   child: Text(label[0].toUpperCase()),
      // ),
      label: Text(
        label,
        style: appFont(
          textStyle: Theme.of(context).textTheme.labelMedium,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      backgroundColor: [
        const Color(0xFF29D697),
        const Color(0xFFEE544A),
        const Color(0xFFFF8D5D),
        const Color(0xFF39D1F2),
      ][colorIndex],
    );
  }
}
