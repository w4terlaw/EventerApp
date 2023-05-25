import 'package:eventer_app/common/widgets/error_dialog_widget.dart';
import 'package:eventer_app/feature/organizer/data/models/organizer_info/organizer_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app_colors.dart';
import '../../../../../common/localization.dart';
import '../../../../../common/widgets/space_widgets.dart';
import '../../bloc/get_organizer_Info_bloc/get_organizer_info_bloc.dart';
import '../../widgets/skeleton_info.dart';

class OrganizerOtherInfo extends StatelessWidget {
  final int organizerId;

  const OrganizerOtherInfo({Key? key, required this.organizerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetOrganizerOtherInfoBloc>().state;
    return state.when(
      loading: () => const SkeletonOrganizerInfo(),
      loaded: (organizerInfo) => OrganizerOtherInfoBody(
        organizerInfo: organizerInfo,
        organizerId: organizerId,
      ),
      error: (failure) => ErrorDialog(
        failure: failure,
        onPressed: () => context.read<GetOrganizerOtherInfoBloc>().add(
              GetOrganizerOtherInfoEvent.getInfo(organizerId: organizerId),
            ),
      ),
    );
  }
}

class OrganizerOtherInfoBody extends StatelessWidget {
  final int organizerId;
  final OrganizerInfo organizerInfo;

  const OrganizerOtherInfoBody(
      {Key? key, required this.organizerInfo, required this.organizerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            if (organizerInfo.isSubscribed) {
              context.read<GetOrganizerOtherInfoBloc>().add(
                    GetOrganizerOtherInfoEvent.getInfo(
                      organizerId: organizerId,
                      toggleSubscribe: true,
                    ),
                  );
            } else {
              context.read<GetOrganizerOtherInfoBloc>().add(
                    GetOrganizerOtherInfoEvent.getInfo(
                      organizerId: organizerId,
                      toggleSubscribe: true,
                    ),
                  );
            }
          },
          child: Text(
            (organizerInfo.isSubscribed) ? L10n.unsubscribe : L10n.subscribe,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: (organizerInfo.isSubscribed) ? Colors.grey : Colors.red),
          ),
        ),
        // (organizerInfo.isSubscribed)
        //     ?
        //     : TextButton(
        //         onPressed: () => context.read<GetOrganizerOtherInfoBloc>()
        //           ..add(GetOrganizerOtherInfoEvent.getInfo(
        //               organizerId: organizerId, toggleSubscribe: true)),
        //         child: Text(
        //           L10n.subscribe,
        //           style: Theme.of(context).textTheme.titleMedium?.copyWith(
        //                 color: Colors.red,
        //               ),
        //         ),
        //       ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  organizerInfo.countOfSubscribers.toString(),
                  style: Theme.of(context).textTheme.titleMedium,
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
                  organizerInfo.countOfEvents.toString(),
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
        const VerticalSpace(15),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     SizedBox(
        //       width: 200.w,
        //       child: (organizerInfo.isSubscribed)
        //           ? MyOutlinedButton(
        //               widget: Row(
        //                 mainAxisSize: MainAxisSize.min,
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Image.asset(
        //                     'assets/icons/subsribe.png',
        //                     width: 22.w,
        //                     height: 22.w,
        //                   ),
        //                   const HorizontalSpace(10),
        //                   Text(
        //                     L10n.organizerUnsubscribe,
        //                     style: Theme.of(context).textTheme.labelLarge,
        //                   ),
        //                 ],
        //               ),
        //               onPressed: () {},
        //               padding: 0,
        //             )
        //           : MyElevatedButton(
        //               widget: Row(
        //                 mainAxisSize: MainAxisSize.min,
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Image.asset(
        //                     'assets/icons/subsribe.png',
        //                     width: 22.w,
        //                     height: 22.w,
        //                   ),
        //                   const HorizontalSpace(10),
        //                   Text(
        //                     L10n.organizerSubscribe,
        //                     style: Theme.of(context).textTheme.labelLarge,
        //                   ),
        //                 ],
        //               ),
        //               onPressed: () {},
        //               padding: 0,
        //             ),
        //     ),
        //     const HorizontalSpace(10),
        //     SizedBox(
        //       width: 56,
        //       child: MyElevatedButton(
        //         backgroundColor: Colors.grey,
        //         widget: const Icon(Icons.report_problem_outlined),
        //         onPressed: () {},
        //         padding: 0,
        //       ),
        //     )
        //   ],
        // ),
      ],
    );
  }
}
