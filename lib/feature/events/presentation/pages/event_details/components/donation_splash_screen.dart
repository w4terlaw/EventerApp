import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/widgets/button_widgets.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class DonationSplashScreen extends StatelessWidget {
  const DonationSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: MyElevatedButton(
          padding: 50,
          widget: Text('ВЕРНУТЬСЯ',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.white)),
          onPressed: () => Navigator.of(context).pop(),
          backgroundColor: AppColors.mainTextColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VerticalSpace(100.h),
          LottieBuilder.asset(
            'assets/animations/58823-piggy-bank-coin-in.json',
            height: 400,
            // reverse: true,
            repeat: true,
            fit: BoxFit.cover,
          ),
          Text(
            'Спасибо за поддержку',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
