import 'package:eventer_app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme myTextTheme() {
  const appFont = GoogleFonts.rubik;
  return TextTheme(
    // H1 Bold 50px 72 0
    displayLarge: appFont(
      fontWeight: FontWeight.bold,
      fontSize: 50.sp,
      height: 72 / 50,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // H2 Book 35px Auto 0
    displayMedium: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 35.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // H3 Book 30px Auto 0
    displaySmall: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 30.sp,
      height: null,
      letterSpacing: 0,
    ),

    // H4 Medium 24px Auto 0
    headlineLarge: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 24.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // H5 Medium 22px 34 0
    headlineMedium: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 22.sp,
      height: 34 / 22,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // Title1 Medium 18px Auto 0
    titleLarge: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 18.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // Title2 Medium 16px Auto 0
    titleMedium: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // Title3 Medium 15px Auto 0
    titleSmall: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 15.sp,
      height: 23 / 14,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // Body1 Book 16px 25 0
    bodyLarge: appFont(
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      height: 25 / 16,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // Body2 Book 15px Auto 0
    bodyMedium: appFont(
      fontWeight: FontWeight.w400,
      fontSize: 15.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // Body3 Book 14px 23 0
    bodySmall: appFont(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // BUTTON Medium 16px 25 1 0
    labelLarge: appFont(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      height: 25 / 16,
      letterSpacing: 1,
      color: Colors.white,
    ),

    // SubTitle1 Book 13px Auto 0
    labelMedium: appFont(
      fontWeight: FontWeight.w300,
      fontSize: 13.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),

    // SubTitle 2 Book 12px Auto 0
    labelSmall: appFont(
      fontWeight: FontWeight.w300,
      fontSize: 12.sp,
      height: null,
      letterSpacing: 0,
      color: AppColors.mainTextColor,
    ),
  );
}

// class AppTextStyles {
//   static const appFont = GoogleFonts.rubik;
//
//   static final TextStyle displayLarge = appFont(
//     fontWeight: FontWeight.bold,
//     fontSize: 50.sp,
//     height: 72 / 50,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle displayMedium = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 35.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle displaySmall = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 30.sp,
//     height: null,
//     letterSpacing: 0,
//   );
//
//   static final TextStyle headlineLarge = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 24.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle headlineMedium = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 22.sp,
//     height: 34 / 22,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle titleLarge = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 18.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle titleMedium = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 16.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle titleSmall = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 15.sp,
//     height: 23 / 14,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle bodyLarge = appFont(
//     fontWeight: FontWeight.w400,
//     fontSize: 16.sp,
//     height: 25 / 16,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle bodyMedium = appFont(
//     fontWeight: FontWeight.w400,
//     fontSize: 15.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle bodySmall = appFont(
//     fontWeight: FontWeight.w400,
//     fontSize: 14.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle labelLarge = appFont(
//     fontWeight: FontWeight.w500,
//     fontSize: 16.sp,
//     height: 25 / 16,
//     letterSpacing: 1,
//     color: Colors.white,
//   );
//
//   static final TextStyle labelMedium = appFont(
//     fontWeight: FontWeight.w300,
//     fontSize: 13.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
//
//   static final TextStyle labelSmall = appFont(
//     fontWeight: FontWeight.w300,
//     fontSize: 12.sp,
//     height: null,
//     letterSpacing: 0,
//     color: AppColors.mainTextColor,
//   );
// }
