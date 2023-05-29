import 'package:flutter/material.dart';

import '../../../../../../common/localization.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
