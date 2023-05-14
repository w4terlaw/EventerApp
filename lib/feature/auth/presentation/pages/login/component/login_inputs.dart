import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:eventer_app/feature/auth/presentation/widgets/input_field_widgets.dart';
import 'package:flutter/material.dart';


class Inputs extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const Inputs(
      {super.key,
        required this.emailController,
        required this.passwordController});

  @override
  State<Inputs> createState() => _InputsState();
}
class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyInputField(
          controller: widget.emailController,
          hintText: L10n.email,
          prefixIcon: 'assets/icons/mail.png',
        ),
        const VerticalSpace(20),
        MyInputPasswordField(
          controller: widget.passwordController,
          hintText: L10n.password,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
      ],
    );
  }
}
