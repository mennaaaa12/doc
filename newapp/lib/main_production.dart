import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/di/dependency_injection.dart';
import 'package:newapp/Core/helpers/constans.dart';
import 'package:newapp/Core/helpers/shared_prefrence_helper.dart';
import 'package:newapp/Core/routing/App_route.dart';
import 'package:newapp/doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkedInIfUserIsLoggedIn();
  runApp(DocApp(appRoute: AppRouter()));
}

checkedInIfUserIsLoggedIn() async {
  String userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
