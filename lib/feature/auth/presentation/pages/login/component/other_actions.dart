import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/user_login_bloc/user_login_bloc.dart';

class OtherActions extends StatelessWidget {
  const OtherActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logBloc = context.watch<UserLoginBloc>();
    return Column(
      children: [
        // const VerticalSpace(10),
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
                Navigator.pushNamed(
                        context, MyRouterConstants.registrationRoute)
                    .whenComplete(
                  () {
                    logBloc.emit(
                      const UserLoginState.error(
                          message: 'Вы успешно зарегистрировались'),
                    );
                  },
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
