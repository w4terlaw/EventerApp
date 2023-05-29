import 'package:flutter/material.dart';

import '../../../../common/widgets/skeleton_widgets.dart';
import '../../../../common/widgets/space_widgets.dart';

class SkeletonOrganizerInfo extends StatelessWidget {
  const SkeletonOrganizerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MySkeletonLine(
                width: 120,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 19,
                  child: MySkeletonLine(
                    width: 40,
                  ),
                ),
                VerticalSpace(6),
                SizedBox(
                  height: 20,
                  child: MySkeletonLine(
                    width: 90,
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
              children: const [
                SizedBox(
                  height: 19,
                  child: MySkeletonLine(
                    width: 40,
                  ),
                ),
                VerticalSpace(6),
                SizedBox(
                  height: 20,
                  child: MySkeletonLine(
                    width: 90,
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
            SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 22,
                    child: MySkeletonLine(
                      width: 40,
                    ),
                  ),
                  VerticalSpace(4),
                  SizedBox(
                    height: 20,
                    child: MySkeletonLine(
                      width: 100,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
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
