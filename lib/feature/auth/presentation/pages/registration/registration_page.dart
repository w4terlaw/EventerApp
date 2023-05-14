import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:flutter/material.dart';

import '/common/localization.dart';
import '../../../../../common/widgets/button_widgets.dart';
import '../../widgets/input_field_widgets.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterBody(),
    );
  }
}

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const VerticalSpace(20),
          const BackToLogin(),
          const VerticalSpace(20),
          const SignUp(),
          const VerticalSpace(20),
          const Inputs(),
          const VerticalSpace(40),
          MyElevatedButton(
            widget: Text(L10n.signUpUpperCase,
                style: Theme.of(context).textTheme.labelLarge),
            onPressed: () {},
          ),
          const VerticalSpace(20),
          const OtherActions(),
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

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Text>[
        Text(
          L10n.registration,
          style: Theme.of(context).textTheme.headlineLarge,
        )
        // CustomText.headline4(L10n.registration),
      ],
    );
  }
}

class Inputs extends StatelessWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        MyInputField(
          hintText: L10n.firstName,
          prefixIcon: 'assets/icons/profile.png',
        ),
        VerticalSpace(20),
        MyInputField(
          hintText: L10n.lastName,
          prefixIcon: 'assets/icons/profile.png',
        ),
        VerticalSpace(20),
        MyInputField(
          hintText: L10n.email,
          prefixIcon: 'assets/icons/mail.png',
        ),
        VerticalSpace(20),
        MyInputPasswordField(
          hintText: L10n.password,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
        VerticalSpace(20),
        MyInputPasswordField(
          hintText: L10n.confirmPassword,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
      ],
    );
  }
}

class OtherActions extends StatelessWidget {
  const OtherActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          L10n.or,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: AppColors.secondaryTextColor),
        ),
        const VerticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              L10n.haveAnAccount,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const HorizontalSpace(5),
            GestureDetector(
              child: Text(
                L10n.signIn,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.secondaryColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ],
    );
  }
}
