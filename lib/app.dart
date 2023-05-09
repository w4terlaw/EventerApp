import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:eventer_app/presentation/pages/event_details/event_details.dart';
import 'package:eventer_app/presentation/pages/search_event/search_event_page.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/pages/login/login.dart';
import 'presentation/pages/navbar/navbar.dart';
import 'presentation/pages/registration/registration_page.dart';
import 'presentation/pages/reset_password/reset_password_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
            navigatorKey: navigatorKey,
            theme: ThemeData(
              // useMaterial3: true,
              colorScheme: ColorScheme.fromSwatch(
                // primarySwatch: Colors.deepPurple,
                accentColor: AppColors.secondaryColor,
              ),
              scaffoldBackgroundColor: Colors.white,
              brightness: Brightness.light,
              textTheme: myTextTheme(),
            ),
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            home: const AppView(),
            // initialRoute: '/login',
            routes: {
              '/login': (context) => const Login(),
              '/home': (context) => Navbar(),
              '/registration': (context) => const RegistrationPage(),
              '/reset_password': (context) => const ResetPasswordPage(),
              '/search': (context) => const SearchPage(),
            },
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/event_details':
                  final int id = settings.arguments as int;

                  return MaterialPageRoute(
                    builder: (context) => EventDetails(
                      id: id,
                    ),
                  );
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
          return Navbar();
        } else if (state is AuthenticationEmptyState) {
          return const Login();
        } else {
          return Container(
              color: Colors.white,
              child: const Center(child: MyLoadingWidget()));
        }
      },
    );
  }
}
