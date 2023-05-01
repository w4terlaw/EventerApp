import 'package:flutter/material.dart';

import '/common/app_colors.dart';

class MyElevatedButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;

  const MyElevatedButton({
    super.key,
    required this.widget,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22, left: 22),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: AppColors.secondaryColor,
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
