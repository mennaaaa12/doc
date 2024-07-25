import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/style.dart';
import 'package:newapp/Features/home/data/models/specialization_response_model.dart';

class DoctorsListviewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListviewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              'assets/images/picture.png',
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),
          horizontalspace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                ),
                verticalspace(5),
                Text(
                   '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalspace(5),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
