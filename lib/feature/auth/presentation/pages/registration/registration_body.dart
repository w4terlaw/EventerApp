import 'package:eventer_app/feature/auth/presentation/bloc/user_registration_bloc/user_registration_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/localization.dart';
import '../../../../../common/widgets/button_widgets.dart';
import '../../../../../common/widgets/space_widgets.dart';
import 'components/inputs.dart';
import 'components/other_actions.dart';
import 'components/sign_up.dart';

class RegistrationPageBody extends StatelessWidget {
  const RegistrationPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final bloc = context.watch<UserRegistrationBloc>();
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 24),
      child: Column(
        children: <Widget>[
          const SignUp(),
          const VerticalSpace(20),
          bloc.state.maybeWhen(
            error: (failure) => Text(failure),
            orElse: () => const VerticalSpace(0),
          ),
          const VerticalSpace(20),
          Inputs(
            firstNameController: firstNameController,
            lastNameController: lastNameController,
            emailController: emailController,
            passwordController: passwordController,
            confirmPasswordController: confirmPasswordController,
          ),
          const VerticalSpace(40),
          MyElevatedButton(
            widget: Text(L10n.signUpUpperCase,
                style: Theme.of(context).textTheme.labelLarge),
            onPressed: () {
              if (passwordController.text == confirmPasswordController.text) {
                context.read<UserRegistrationBloc>().add(
                      UserRegistrationEvent.userRegistration(
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
              } else {
                bloc.emit(
                  const UserRegistrationState.error(
                      failure: 'Пароли не совпадают.'),
                );
              }
            },
          ),
          const VerticalSpace(20),
          const OtherActions(),
        ],
      ),
    );
  }
}
