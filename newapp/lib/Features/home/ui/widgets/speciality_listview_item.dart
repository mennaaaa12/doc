import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/colors.dart';
import 'package:newapp/Core/theming/style.dart';

import '../../data/models/specialization_response_model.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem({
    super.key,
    required this.specializationsData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManger.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorManger.lightBlue,
                  child: Image.asset(
                    'assets/images/mandoc.png',
                    height: 42.h,
                    width: 42.w,
                  ),
                ),
                )
              : CircleAvatar(
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
            specializationsData?.name ?? 'Specialization',
            style: itemIndex == selectedIndex
                ? TextStyles.font14DarkBlueBold
                : TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
