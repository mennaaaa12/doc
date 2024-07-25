import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/di/dependency_injection.dart';
import 'package:newapp/Core/helpers/constans.dart';
import 'package:newapp/Core/helpers/shared_prefrence_helper.dart';
import 'package:newapp/Core/routing/app_route.dart';
import 'package:newapp/Core/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkedInIfUserIsLoggedIn();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'New App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: _appRouter.generateRoute,
          initialRoute: Routes.loginScreen,
        );
      },
    );
  }
}

Future<void> checkedInIfUserIsLoggedIn() async {
  String userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
