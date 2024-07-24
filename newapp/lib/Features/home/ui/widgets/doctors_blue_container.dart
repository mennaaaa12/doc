import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Core/theming/style.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: 210.h,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/home_blue_pattern.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book and\nschedule with\nnearest doctor',
                    style: TextStyles.font18WhiteMedium,
                  ),
                  verticalspace(16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () { },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.0),
                        ),
                      ),
                      child: Text(
                        'Find Nearby',
                        style: TextStyles.font12BlueRegular,
                      ),
                    ),
                  )
                ],
              )
            ),
            Positioned(
              top: 0,
              right: 8.w,
              child: Image.asset(
                'assets/images/doctor.png',
                height: 255.h,
                
              )
            )
          ],
        ));
  }
}
