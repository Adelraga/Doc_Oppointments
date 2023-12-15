import 'package:doc_appointment/Features/Splash/view/splash_view.dart';
import 'package:doc_appointment/Features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment/Features/login/view/login_view.dart';
import 'package:doc_appointment/Features/onBoarding/view/onBoarding_view.dart';
import 'package:doc_appointment/cors/DI/dependency_injection.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingView());

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreenView(),
                ));

      case '/splashScreen':
        return MaterialPageRoute(builder: (context) => SplashView());
      case  Routes.homeScreen:
      return MaterialPageRoute(builder: (context) => Placeholder());
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
