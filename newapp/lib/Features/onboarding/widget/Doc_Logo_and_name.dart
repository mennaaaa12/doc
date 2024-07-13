import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newapp/Core/theming/style.dart';


class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/DocDoc_logo.svg'),
        SizedBox(width: 10.w),
        Text(
          'DocDoc',
          style: TextStyles.font24black700weight,
        ),
      ],
    );
  }
}