import 'package:flutter/material.dart';

import '../feature/auth/presentation/pages/login/login.dart';
import '../feature/auth/presentation/pages/registration/registration_page.dart';
import '../feature/auth/presentation/pages/reset_password/reset_password_page.dart';
import '../feature/events/presentation/pages/event_details/event_details.dart';
import '../feature/organizer/presentation/pages/organizer.dart';
import '../feature/user/presentation/pages/search/search.dart';
import '../feature/user/presentation/widgets/navbar.dart';
import 'constants.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // LOGIN
      case MyRouterConstants.loginRoute:
        return MaterialPageRoute(builder: (_) => const Login());
      //  HOME
      case MyRouterConstants.homeRoute:
        return MaterialPageRoute(builder: (_) => Navbar());
      //  REGISTRATION
      case MyRouterConstants.registrationRoute:
        return MaterialPageRoute(builder: (_) => const RegistrationPage());
      //  RESET PASSWORD
      case MyRouterConstants.resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordPage());
      //  SEARCH
      case MyRouterConstants.searchRoute:
        return MaterialPageRoute(builder: (_) => const SearchPage());
      //  EVENT DETAILS
      case MyRouterConstants.eventDetailsRoute:
        final int eventId = settings.arguments as int;
        return MaterialPageRoute(builder: (_) => EventDetailsPage(eventId: eventId));
      //  ORGANIZER
      case MyRouterConstants.organizerRoute:
        final int organizerId = settings.arguments as int;
        return MaterialPageRoute(builder: (_) => OrganizerPage(organizerId: organizerId));
      //  DEFAULT PAGE (if page not exists)
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
