import 'package:eventer_app/common/localization.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Text>[
        Text(
          L10n.signIn,
          style: Theme.of(context).textTheme.headlineMedium,
        )
        // CustomText.headline4(L10n.signIn),
      ],
    );
  }
}
