import 'package:eventer_app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MyLoadingWidget extends StatelessWidget {
  final double size;
  final Color color;

  const MyLoadingWidget({
    super.key,
    this.size = 45,
    this.color = AppColors.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.fourRotatingDots(
      color: color,
      size: size,
    );
  }
}
