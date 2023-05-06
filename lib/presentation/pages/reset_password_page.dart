import 'package:flutter/material.dart';

import '/common/localization.dart';
import '/presentation/widgets/button_widgets.dart';
import '/presentation/widgets/input_field_widgets.dart';
import '/presentation/widgets/space_widgets.dart';

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
          MyElevatedButton(
            widget: Text(
              L10n.sendUpperCase,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
            ),
            onPressed: () {},
          )
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
            Text(
              L10n.resetPassword,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge,
            ),
          ],
        ),
        const VerticalSpace(12),
        Text(
          L10n.resetPasswordDescription,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!.copyWith(height: 2.0),
        ),
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
