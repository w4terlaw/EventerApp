import 'package:eventer_app/common/app_colors.dart';
import 'package:eventer_app/common/my_text_theme.dart';
import 'package:eventer_app/service/locator_service.dart';
import 'package:eventer_app/common/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/on_generete_route.dart';
import 'feature/organizer/presentation/pages/organizer.dart';
import 'feature/user/presentation/widgets/navbar.dart';
import 'feature/auth/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'feature/auth/presentation/pages/login/login.dart';
import 'feature/auth/presentation/pages/registration/registration_page.dart';
import 'feature/auth/presentation/pages/reset_password/reset_password_page.dart';
import 'feature/events/presentation/pages/event_details/event_details.dart';
import 'feature/user/presentation/pages/search/search.dart';

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
            onGenerateRoute: MyRouter.generateRoute,
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
