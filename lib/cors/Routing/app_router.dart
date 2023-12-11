import 'package:doc_appointment/Features/login/view/login_view.dart';
import 'package:doc_appointment/Features/onBoarding/view/onBoarding_view.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingView());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreenView());

      // case '/register':
      // return MaterialPageRoute(builder: (context) => RegisterPage());
      // case '/home':
      // return MaterialPageRoute(builder: (context) => HomePage());
      // case '/profile':
      // return MaterialPageRoute(builder: (context) => ProfilePage());
      // case '/settings':
      // return MaterialPageRoute(builder: (context) => SettingsPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
