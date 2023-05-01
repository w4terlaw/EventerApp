import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/common/app_colors.dart';

class CustomText {


  static Text headline4(text, {double size = 24.0, double? height}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: size.sp,
        fontWeight: FontWeight.w500,
        height: height,
      ),
    );
  }

  static Text body2(text,
      {double size = 15.0, double? height, Color? color, FontWeight? weight}) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        height: height,
        color: color ?? AppColors.mainTextColor,
        fontSize: size.sp,
        fontWeight: weight,
      ),
    );
  }

  static Text body3(text, {double size = 14.0, double? height}) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
        height: height,
        color: AppColors.mainTextColor,
        fontSize: size.sp,
      ),
    );
  }

  static Text title1(text, {double size = 18.0, double? height, int? maxLines}) {
    return Text(
      text,
      softWrap: true,
      maxLines: maxLines,
      style: TextStyle(
        color: AppColors.mainTextColor,
        height: height,
        fontSize: size.sp,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static Text title2(text, {double size = 16.0, double? height, double? letterSpacing, Color color = AppColors.secondaryTextColor}) {
    return Text(
      text,
      softWrap: true,
      maxLines: 2,
      style: TextStyle(
        color: color,
        letterSpacing: letterSpacing,
        height: height,
        fontSize: size.sp,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static Text title3(text, {double size = 15.0, double? height}) {
    return Text(
      text,
      softWrap: true,
      maxLines: 2,
      style: TextStyle(
        color: AppColors.mainTextColor,
        height: height,
        fontSize: size.sp,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static Text subTitle1(text, {double size = 13.0, double? height}) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.mainTextColor,
        fontSize: size.sp,
        height: height,
      ),
    );
  }

  static Text subTitle2(text, {double size = 12.0, double? height, Color? color, FontWeight? weight}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.mainTextColor,
        fontSize: size.sp,
        height: height,
        fontWeight: weight,
      ),
    );
  }
}
