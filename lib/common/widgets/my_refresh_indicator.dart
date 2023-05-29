import 'package:flutter/material.dart';

import '../app_colors.dart';

class MyRefreshIndicator extends StatelessWidget {
  final Function() onRefresh;
  final Widget child;

  const MyRefreshIndicator(
      {Key? key, required this.onRefresh, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: AppColors.whiteColor,
      color: AppColors.mainTextColor,
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      onRefresh: () {
        onRefresh();
        return Future.value();
      },
      child: child,
    );
  }
}
