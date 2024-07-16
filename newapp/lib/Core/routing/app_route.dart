import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/Core/di/dependency_injection.dart';
import 'package:newapp/Core/routing/routes.dart';
import 'package:newapp/Features/home/ui/home_screen.dart';
import 'package:newapp/Features/login/logic/cubit/login_cubit.dart';
import 'package:newapp/Features/login/ui/widgets/Login_Screen.dart';
import 'package:newapp/Features/onboarding/onboaeding_Screen.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}