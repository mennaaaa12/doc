import 'package:flutter/material.dart';
import 'package:newapp/Core/di/dependency_injection.dart';
import 'package:newapp/Core/routing/App_route.dart';
import 'package:newapp/doc_app.dart';

void main() {
  setupGetIt();
  runApp( DocApp( appRoute: AppRoute()));
}

