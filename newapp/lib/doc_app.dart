import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/routing/App_route.dart';
import 'package:newapp/Core/routing/routes.dart';
import 'package:newapp/Core/theming/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRoute ;
  const DocApp({super.key,required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorManger.mainblue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRoute.generateRoute,
      ),
    );
  }
}