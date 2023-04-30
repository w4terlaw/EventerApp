import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/user_login_bloc/user_login_bloc.dart';
import 'package:eventer_app/presentation/pages/home/home_page.dart';
import 'package:eventer_app/presentation/pages/login/login_body.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<UserLoginBloc>().state;
    return state.when(
        userLoginInitial: () => const Scaffold(body: LoginBody()),
        userLoginLoading: () =>
            const Scaffold(body: Center(child: MyPrgoresIndicatorWidget())),
        userLoginSuccess: () => HomePage(),
        userLoginError: (message) => Scaffold(body: LoginBody(error: message)));
  }
}
