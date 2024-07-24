import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/colors.dart';
import 'package:newapp/Core/theming/style.dart';

class DoctorSpeciallityListview extends StatelessWidget {
  const DoctorSpeciallityListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: ColorManger.lightBlue,
                      child: Image.asset(
                        'assets/images/mandoc.png',
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                    verticalspace(8),
                    Text(
                      'spelization',
                      style: TextStyles.font12DarkBlueRegular,
                    )
                  ],
                ),
              );
            }));
  }
}
