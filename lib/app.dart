import 'package:eventer_app/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'locator_service.dart';
import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/login/login_page.dart';
import 'presentation/pages/registration_page.dart';
import 'presentation/pages/reset_password_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.7, 826.9),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  UserAuthBloc(userLoginUsecase: sl(), sharedPreferences: sl()),
            )
          ],
          child: MaterialApp(
            theme: ThemeData(

              fontFamily: 'Iceland'

              // scaffoldBackgroundColor: Colors.white,

              // brightness: Brightness.light,
              // textTheme: Theme.of(context).textTheme.apply(
              //   bodyColor: AppColors.mainColor,
              //   displayColor: Colors.red,
              // ),
              /* light theme settings */
            ),
            // darkTheme: ThemeData(
            //   brightness: Brightness.dark,
            // ),
            themeMode: ThemeMode.system,
            debugShowCheckedModeBanner: false,
            // home: HomePage(),
            initialRoute: '/login',
            routes: {
              '/login': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/registration': (context) => const RegistrationPage(),
              '/reset_password': (context) => const ResetPasswordPage(),
            },
          ),
        );
      },
    );
  }
}

extension CustomStyles on TextTheme {
  TextStyle get error {
    return const TextStyle(
      fontSize: 18.0,
      color: Colors.red,
      fontWeight: FontWeight.bold,
    );
  }
}
