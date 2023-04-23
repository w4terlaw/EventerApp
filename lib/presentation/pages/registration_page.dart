
import 'package:eventer_app/common/app_colors.dart';
import 'package:flutter/material.dart';

// import '/common/app_colors.dart';
import '/common/localization.dart';
import '/presentation/widgets/button_widgets.dart';
import '/presentation/widgets/input_field_widgets.dart';
import '/presentation/widgets/space_widgets.dart';
import '../../common/custom_text.dart';

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
          MyElevatedButton(LRus.signUpUpperCase, onPressed: () {}),
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
        CustomText.headline4(LRus.registration),
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
          hintText: LRus.firstName,
          prefixIcon: 'assets/icons/profile.png',
        ),
        VerticalSpace(20),
        MyInputField(
          hintText: LRus.lastName,
          prefixIcon: 'assets/icons/profile.png',
        ),
        VerticalSpace(20),
        MyInputField(
          hintText: LRus.email,
          prefixIcon: 'assets/icons/mail.png',
        ),
        VerticalSpace(20),
        MyInputPasswordField(
          hintText: LRus.password,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
        VerticalSpace(20),
        MyInputPasswordField(
          hintText: LRus.confirmPassword,
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
        CustomText.title2(LRus.or),
        const VerticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText.body2(LRus.haveAnAccount),
            const HorizontalSpace(5),
            GestureDetector(
              child: CustomText.body2(LRus.signIn, color: AppColors.secondaryColor),
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
