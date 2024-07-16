import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/theming/colors.dart';
import 'package:newapp/Core/theming/style.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:contentPadding ??  EdgeInsets.symmetric(horizontal: 20 .w, vertical: 18.h),
        focusedBorder:focusedBorder ??  OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManger.mainblue,
            width: 1.3
          ),
         borderRadius: BorderRadius.circular(16) ,
        ),
        enabledBorder: enabledBorder ??  OutlineInputBorder(
          borderSide:const BorderSide(
            color: ColorManger.lighterGray,
            width: 1.3
          ),
          
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: enabledBorder ??  OutlineInputBorder(
          borderSide:const BorderSide(
            color: Colors.red,
            width: 1.3
          ),
          
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: enabledBorder ??  OutlineInputBorder(
          borderSide:const BorderSide(
            color: Colors.red,
            width: 1.3
          ),
          
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle:hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon ,
        fillColor: backgroundColor ?? ColorManger.moreLightGray,
        filled: true,
      ),
      
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) => validator(value),
    );
  }
}