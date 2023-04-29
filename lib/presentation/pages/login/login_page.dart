import 'package:eventer_app/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:eventer_app/presentation/pages/home/home_page.dart';
import 'package:eventer_app/presentation/pages/login/login_body.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
