import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/localization.dart';
import '../../../widgets/space_widgets.dart';

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
              L10n.notAccount,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const HorizontalSpace(5),
            GestureDetector(
              child: Text(
                L10n.signUp,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.secondaryColor),
              ),
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
