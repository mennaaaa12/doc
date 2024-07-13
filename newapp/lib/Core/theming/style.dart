import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/theming/colors.dart';

class TextStyles{
  static TextStyle font24black700weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );
  static TextStyle font32bluebold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManger.mainblue
  );
   static TextStyle font13greyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorManger.grey
  );
   static TextStyle font16whitesemibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );
}