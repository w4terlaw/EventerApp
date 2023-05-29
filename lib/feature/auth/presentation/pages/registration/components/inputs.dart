import 'package:flutter/material.dart';

import '../../../../../../common/localization.dart';
import '../../../../../../common/widgets/space_widgets.dart';
import '../../../widgets/input_field_widgets.dart';

class Inputs extends StatelessWidget {
  final TextEditingController firstNameController;

  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const Inputs(
      {Key? key,
      required this.firstNameController,
      required this.lastNameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyInputField(
          controller: firstNameController,
          hintText: L10n.firstName,
          prefixIcon: 'assets/icons/user.png',
        ),
        const VerticalSpace(20),
        MyInputField(
          controller: lastNameController,
          hintText: L10n.lastName,
          prefixIcon: 'assets/icons/user.png',
        ),
        const VerticalSpace(20),
        MyInputField(
          controller: emailController,
          hintText: L10n.email,
          prefixIcon: 'assets/icons/mail.png',
        ),
        const VerticalSpace(20),
        MyInputPasswordField(
          controller: passwordController,
          hintText: L10n.password,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
        const VerticalSpace(20),
        MyInputPasswordField(
          controller: confirmPasswordController,
          hintText: L10n.confirmPassword,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
      ],
    );
  }
}
