import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/custom_text.dart';
import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/presentation/bloc/user_login_bloc/user_login_bloc.dart';
import 'package:eventer_app/presentation/widgets/button_widgets.dart';
import 'package:eventer_app/presentation/widgets/input_field_widgets.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:eventer_app/presentation/widgets/space_widgets.dart';
import 'package:eventer_app/presentation/widgets/switch_toggle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  // final String? error;
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    // print(MediaQuery.of(context).size);
    return BlocConsumer<UserLoginBloc, UserLoginState>(
      listener: (context, state) {
        if (state is UserLoginSuccess) {
          Navigator.pushReplacementNamed(context, '/home');
        }
      },
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
                passwordController: passwordController,
              ),
              const VerticalSpace(20),
              const AfterInputs(),
              const VerticalSpace(40),
              MyElevatedButton(
                widget: (state is UserLoginLoading)
                    ? const MyLoadingWidget(
                        size: 30,
                      )
                    : CustomText.title2(
                        L10n.signInUpperCase,
                  color: AppColors.whiteColor,
                        letterSpacing: 1,
                      ),
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

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 150.h,
      child: const Placeholder(
        color: AppColors.whiteColor,
      ), //  TODO: добавить лого
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Text>[
        CustomText.headline4(L10n.signIn),
      ],
    );
  }
}

class Inputs extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const Inputs(
      {super.key,
      required this.emailController,
      required this.passwordController});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyInputField(
          controller: widget.emailController,
          hintText: L10n.email,
          prefixIcon: 'assets/icons/mail.png',
        ),
        const VerticalSpace(20),
        MyInputPasswordField(
          controller: widget.passwordController,
          hintText: L10n.password,
          prefixIcon: 'assets/icons/lock.png',
          suffixIcon: 'assets/icons/hidden.png',
        ),
      ],
    );
  }
}

class AfterInputs extends StatelessWidget {
  const AfterInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            MySwitchToggle(
              onToggle: (value) => debugPrint("Switch status: $value"),
            ),
            const HorizontalSpace(10),
            CustomText.body3(L10n.rememberMe),
          ],
        ),
        GestureDetector(
          child: CustomText.body3(L10n.forgotPassword),
          onTap: () {
            Navigator.pushNamed(context, '/reset_password');
          },
        ),
      ],
    );
  }
}

class OtherActions extends StatelessWidget {
  const OtherActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText.title2(L10n.or),
        const VerticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText.body2(L10n.notAccount),
            const HorizontalSpace(5),
            GestureDetector(
              child: CustomText.body2(L10n.signUp,
                  color: AppColors.secondaryColor),
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
