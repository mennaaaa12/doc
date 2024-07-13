import 'package:flutter/material.dart';
import 'package:newapp/Core/routing/routes.dart';
import 'package:newapp/Features/login/ui/widgets/Login_Screen.dart';
import 'package:newapp/Features/onboarding/onboaeding_Screen.dart';

class AppRoute{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());

        case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
        
        default:
        return MaterialPageRoute(builder: (context) => Scaffold(body: 
        Center(child: Text('no route define for ${settings.name}')),));
        
    }
  }
}