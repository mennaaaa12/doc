import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/style.dart';

class DoctorListview extends StatelessWidget {
  const DoctorListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
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
                          Text('Name', style: TextStyles.font18DarkBlueBold),
                          verticalspace(5),
                          Text('Degree | 01111111',
                              style: TextStyles.font12GrayMedium),
                          verticalspace(5),
                          Text('Email@gmail.com',
                              style: TextStyles.font12GrayMedium),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
