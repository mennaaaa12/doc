import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newapp/Core/theming/style.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/docdoc_logo_low.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor\nApplication App',
            textAlign: TextAlign.center,
            style: TextStyles.font32bluebold.copyWith(
              height: 1.4,
            ),
          ),
        )
      ],
    );
  }
}
