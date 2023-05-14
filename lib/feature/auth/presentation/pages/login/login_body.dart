import 'package:eventer_app/common/widgets/space_widgets.dart';
import 'package:eventer_app/feature/auth/presentation/bloc/user_login_bloc/user_login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/common/localization.dart';
import '../../../../../common/widgets/button_widgets.dart';
import '../../../../../common/widgets/loading_widget.dart';
import 'component/after_inputs.dart';
import 'component/login_inputs.dart';
import 'component/logo.dart';
import 'component/other_actions.dart';
import 'component/sign_in.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    // print(MediaQuery.of(context).size);
    return BlocBuilder<UserLoginBloc, UserLoginState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              const Logo(),
              Text(
                (state is UserLoginError) ? state.message : '',
              ),
              const VerticalSpace(30),
              const SignIn(),
              const VerticalSpace(20),
              Inputs(
                  emailController: emailController,
                  passwordController: passwordController),
              const VerticalSpace(20),
              const AfterInputs(),
              const VerticalSpace(40),
              MyElevatedButton(
                widget: (state is UserLoginLoading)
                    ? const MyLoadingWidget(
                        size: 30,
                      )
                    : Text(L10n.signInUpperCase,
                        style: Theme.of(context).textTheme.labelLarge),
                onPressed: (state is UserLoginLoading)
                    ? null
                    : () {
                        context.read<UserLoginBloc>().add(
                              UserLoginEvent.userLogin(
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                      },
              ),
              const VerticalSpace(20),
              const OtherActions(),
            ],
          ),
        );
      },
    );
  }
}
