import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/di/dependency_injection.dart';
import 'package:newapp/Core/routing/App_route.dart';
import 'package:newapp/doc_app.dart';

void main() async{
  setupGetIt();
 await ScreenUtil.ensureScreenSize();
 runApp( DocApp( appRoute: AppRouter()));
}

