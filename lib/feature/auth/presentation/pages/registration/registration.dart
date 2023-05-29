import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/feature/auth/domain/use_cases/user_registration.dart';
import 'package:eventer_app/feature/auth/presentation/bloc/user_registration_bloc/user_registration_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service/locator_service.dart';
import 'registration_body.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: AppColors.mainTextColor,
        ),
      ),
      body: const Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<UserRegistrationBloc>(
        create: (context) => UserRegistrationBloc(
          userRegistrationUseCase: sl<UserRegistration>(),
        ),
      )
    ], child: const RegistrationPageBody());
  }
}
