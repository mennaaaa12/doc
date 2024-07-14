import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/theming/colors.dart';
import 'package:newapp/Core/theming/font_weight_helper.dart';

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
  static TextStyle font24bluebold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorManger.mainblue
  );
  
  
   static TextStyle font13greyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorManger.grey
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorManger.darkBlue
  );
   static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.darkBlue
  );
   static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManger.mainblue
  );
  static TextStyle font13blueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.mainblue
  );
  static TextStyle font14greyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.grey
  );
  static TextStyle font14darkbluemeduim = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.darkBlue
  );
  static TextStyle font14lightgreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.lightGray
  );
   static TextStyle font16whitesemibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );
}