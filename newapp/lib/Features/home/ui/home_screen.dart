import 'package:flutter/material.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Features/home/ui/widgets/doctor_speciallity_see_all.dart';
import 'package:newapp/Features/home/ui/widgets/doctors_block_builder.dart';
import 'package:newapp/Features/home/ui/widgets/doctors_blue_container.dart';
import 'package:newapp/Features/home/ui/widgets/home_top_bar.dart';
import 'package:newapp/Features/home/ui/widgets/specialization__bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalspace(24),
              const DoctorSpeciallitySeeAll(),
              verticalspace(18),
              const SpecializationsBlocBuilder(),
              verticalspace(8),
              const DoctorsBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
 

  }