import 'package:eventer_app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 150.h,
      child: const Placeholder(
        color: AppColors.whiteColor,
      ), //  TODO: добавить лого
    );
  }
}
