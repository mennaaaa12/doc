import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/helpers/space.dart';

// ignore: camel_case_types
class Icons_google_fb_apple extends StatelessWidget {
  const Icons_google_fb_apple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
          },
          child: Image.asset(
            'assets/icons/google.png',
            width: 36.w,
            height: 36.h,
          ),
        ),
        horizontalspace(20),
        GestureDetector(
          onTap: () {
          },
          child: Image.asset(
            'assets/icons/apple.png',
            width: 36.w,
            height: 36.h,
          ),
        ),
        horizontalspace(20),
        GestureDetector(
          onTap: () {
          },
          child: Image.asset(
            'assets/icons/facebook.png',
            width: 36.w,
            height: 36.h,
          ),
        ),
      ],
    );
  }
}
