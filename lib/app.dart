import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/pages/event/event_page.dart';
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
              create: (context) => AuthenticationBloc(sharedPreferences: sl()),
            ),
          ],
          child: MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              brightness: Brightness.light,
            ),
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            home: const AppView(),
            // initialRoute: '/login',
            routes: {
              '/login': (context) => const LoginPage(),
              '/home': (context) => const SearchPage(),
              '/registration': (context) => const RegistrationPage(),
              '/reset_password': (context) => const ResetPasswordPage(),
            },
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/event_details':
                  int id = settings.arguments as int;
                  return MaterialPageRoute(
                      builder: (context) => EventDetailPage(id: id));

              }
            },
          ),
        );
      },
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<AuthenticationBloc>();
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is AuthenticationLoadedState) {
          return const SearchPage();
        } else if (state is AuthenticationEmptyState) {
          return const LoginPage();
        } else {
          return Container(
              color: Colors.white,
              child: const Center(child: MyLoadingWidget()));
        }
      },
    );
  }
}
