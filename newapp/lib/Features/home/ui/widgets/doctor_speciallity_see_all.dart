import 'package:flutter/material.dart';
import 'package:newapp/Core/theming/style.dart';

class DoctorSpeciallitySeeAll extends StatelessWidget {
  const DoctorSpeciallitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciallity',
          style: TextStyles.font18DarkBlueBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}