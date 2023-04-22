
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/presentation/widgets/button_widgets.dart';
import '/presentation/widgets/space_widgets.dart';
import '/presentation/widgets/input_field_widgets.dart';
import '/presentation/widgets/switch_toggle_widget.dart';
import '/presentation/widgets/text_widgets.dart';
import '/common/app_colors.dart';
import '/common/localization.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const Logo(),
          const VerticalSpace(30),
          const SignIn(),
          const VerticalSpace(20),
          const Inputs(),
          const VerticalSpace(20),
          const AfterInputs(),
          const VerticalSpace(40),
          MyElevatedButton(LRus.signInUpperCase, onPressed: () {}),
          const VerticalSpace(20),
          const OtherActions(),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 150.h,
      child: const Placeholder(
        color: AppColors.whiteColor,
      ), //  TODO: добавить лого
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Text>[
        titleText(LRus.signIn),
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
          hintText: LRus.email,
          prefixIcon: 'assets/icons/mail.png',
        ),
        VerticalSpace(20),
        MyInputPasswordField(
          hintText: LRus.password,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
      ],
    );
  }
}

class AfterInputs extends StatelessWidget {
  const AfterInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            MySwitchToggle(
              onToggle: (value) => debugPrint("Switch status: $value"),
            ),
            const HorizontalSpace(10),
            mainText(LRus.rememberMe),
          ],
        ),
        GestureDetector(
          child: mainText(LRus.forgotPassword),
          onTap: () {
            Navigator.pushNamed(context, '/reset_password');
          },
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
        secondaryText(LRus.or),
        const VerticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mainText(LRus.notAccount),
            const HorizontalSpace(5),
            GestureDetector(
              child: activeText(LRus.signUp),
              onTap: () {
                Navigator.pushNamed(context, '/registration');
              },
            )
          ],
        ),
      ],
    );
  }
}
