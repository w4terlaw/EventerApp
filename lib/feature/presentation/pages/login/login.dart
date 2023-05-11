import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/feature/presentation/bloc/user_login_bloc/user_login_bloc.dart';
import 'package:eventer_app/feature/presentation/pages/login/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserLoginBloc(userLoginUsecase: sl()),
        )
      ],
      child: const LoginBody(),
    );
  }
}
