import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/user_login_bloc/user_login_bloc.dart';
import 'package:eventer_app/presentation/pages/login/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Wrapper(),
    );
    // final bloc = UserLoginBloc(userLoginUsecase: sl());
    // return BlocProvider(
    //   create: (context) => bloc,
    //   child: BlocBuilder<UserLoginBloc, UserLoginState>(
    //     builder: (context, state) {
    //       return state.when(
    //           userLoginInitial: () => const Scaffold(body: LoginBody()),
    //           userLoginLoading: () =>
    //           const Scaffold(body: Center(child: MyPrgoresIndicatorWidget())),
    //           userLoginSuccess: () => const SearchPage(),
    //           userLoginError: (message) =>
    //               Scaffold(body: LoginBody(error: message)));
    //     },
    //   ),
    // );
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
