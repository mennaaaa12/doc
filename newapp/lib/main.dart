import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/di/dependency_injection.dart';
import 'package:newapp/Core/helpers/constans.dart';
import 'package:newapp/Core/helpers/shared_prefrence_helper.dart';
import 'package:newapp/Features/home/logic/home_cubit.dart';
import 'package:newapp/Features/home/ui/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
    await checkedInIfUserIsLoggedIn();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          home: BlocProvider(
            create: (_) => getIt<HomeCubit>()..getSpesialization(),
            child: const HomeScreen(),
          ),
        );
      },
    );
  }
}
checkedInIfUserIsLoggedIn() async {
  String userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}