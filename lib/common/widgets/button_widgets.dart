import 'package:flutter/material.dart';

import '/common/app_colors.dart';

class MyElevatedButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;
  final double padding;
  final Color? backgroundColor;

  const MyElevatedButton({
    super.key,
    required this.widget,
    this.onPressed,
    this.padding = 22,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding, left: padding),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: backgroundColor ?? AppColors.secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: widget,
        ),
      ),
    );
  }
}

class MyOutlinedButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;
  final double padding;

  const MyOutlinedButton({
    super.key,
    required this.widget,
    this.onPressed,
    this.padding = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding, left: padding),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: OutlinedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            // backgroundColor: AppColors.secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: widget,
        ),
      ),
    );
  }
}
