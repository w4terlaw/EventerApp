import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletons/skeletons.dart';

import 'space_widgets.dart';

class MySkeletonImage extends StatelessWidget {
  const MySkeletonImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SkeletonAvatar(
      style: SkeletonAvatarStyle(
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}

class MySkeletonLine extends StatelessWidget {
  final double? width;
  final double? height;

  const MySkeletonLine({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonLine(
      style: SkeletonLineStyle(
        width: width ?? 40.0,
        height: height ?? 18.0,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class MySkeletonEventCompactCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const MySkeletonEventCompactCard({Key? key, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: padding,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 16),
        child: Container(
          padding: const EdgeInsets.all(8),
          // decoration: BoxDecoration(color: Colors.white,
          //   borderRadius: BorderRadius.circular(16),
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey.withOpacity(0.3),
          //       spreadRadius: 3,
          //       blurRadius: 10,
          //       offset: const Offset(0, 8),
          //     ),
          //   ],
          // ),
          child: SkeletonItem(
            child: Column(
              children: [
                Row(
                  children: [
                    SkeletonAvatar(
                      style: SkeletonAvatarStyle(
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                          width: 100.w,
                          height: 100.h),
                    ),
                    const HorizontalSpace(16),
                    Expanded(
                      child: SkeletonParagraph(
                        style: SkeletonParagraphStyle(
                          lines: 2,
                          spacing: 20,
                          lineStyle: SkeletonLineStyle(
                            randomLength: true,
                            // height: 10,
                            borderRadius: BorderRadius.circular(8),
                            minLength: MediaQuery.of(context).size.width / 8,
                            maxLength: MediaQuery.of(context).size.width / 2,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
