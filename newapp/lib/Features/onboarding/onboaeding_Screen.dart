import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Core/theming/style.dart';
import 'package:newapp/Features/onboarding/widget/Doc_Logo_and_name.dart';
import 'package:newapp/Features/onboarding/widget/Doctor_Image_and_text.dart';
import 'package:newapp/Features/onboarding/widget/get_Started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(height: 30.h),
            const DoctorImageAndText(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [ 
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                 const GetStartedButton()
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
