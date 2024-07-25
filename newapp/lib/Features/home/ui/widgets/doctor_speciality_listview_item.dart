import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/colors.dart';
import 'package:newapp/Core/theming/style.dart';

import '../../data/models/specialization_response_model.dart';

class DoctorSpecialityListviewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorSpecialityListviewItem({super.key, required this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding:
                    EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
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
                      specializationsData?.name ?? 'spelization',
                      style: TextStyles.font12DarkBlueRegular,
                    )
                  ],
                ),
              );
  }
}