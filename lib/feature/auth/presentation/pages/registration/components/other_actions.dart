import 'package:flutter/material.dart';

import '../../../../../../common/app_colors.dart';
import '../../../../../../common/localization.dart';
import '../../../../../../common/widgets/space_widgets.dart';

class OtherActions extends StatelessWidget {
  const OtherActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
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
