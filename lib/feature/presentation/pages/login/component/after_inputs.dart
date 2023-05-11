import 'package:eventer_app/common/localization.dart';
import 'package:flutter/material.dart';

import '../../../widgets/space_widgets.dart';
import '../../../widgets/switch_toggle_widget.dart';

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
            Text(
              L10n.rememberMe,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        GestureDetector(
          child: Text(
            L10n.forgotPassword,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/reset_password');
          },
        ),
      ],
    );
  }
}
