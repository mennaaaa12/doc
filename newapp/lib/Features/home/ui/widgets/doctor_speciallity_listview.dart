import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Features/home/data/models/specialization_response_model.dart';
import 'package:newapp/Features/home/ui/widgets/doctor_speciality_listview_item.dart';

class DoctorSpeciallityListview extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorSpeciallityListview({super.key, required this.specializationDataList, List<SpecializationsData?>? specializationsDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: specializationDataList.length,
            itemBuilder: (context, index) {
              return DoctorSpecialityListviewItem(
                specializationsData: specializationDataList[index],
                itemIndex: index,
              );
            }));
  }
}
