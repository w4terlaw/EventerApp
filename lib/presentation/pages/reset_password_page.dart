import 'package:flutter/material.dart';

import '/common/localization.dart';
import '/presentation/widgets/button_widgets.dart';
import '/presentation/widgets/input_field_widgets.dart';
import '/presentation/widgets/space_widgets.dart';
import '../../common/custom_text.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResetPasswordBody(),
    );
  }
}

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const VerticalSpace(20),
          const BackToLogin(),
          const VerticalSpace(20),
          const ResetPassword(),
          const VerticalSpace(25),
          const Inputs(),
          const VerticalSpace(40),
          MyElevatedButton(widget: CustomText.title2(L10n.sendUpperCase, letterSpacing: 1), onPressed: () {})
        ],
      ),
    );
  }
}

class BackToLogin extends StatelessWidget {
  const BackToLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [Image.asset('assets/icons/arrow-left.png', height: 22)],
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Text>[
            CustomText.headline4(L10n.resetPassword),
          ],
        ),
        const VerticalSpace(12),
        CustomText.body2(L10n.resetPasswordDescription, height: 2.0),
      ],
    );
  }
}

class Inputs extends StatelessWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyInputField(
      hintText: L10n.email,
      prefixIcon: 'assets/icons/mail.png',
    );
  }
}
