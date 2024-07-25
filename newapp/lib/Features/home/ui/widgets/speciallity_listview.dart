import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/Features/home/data/models/specialization_response_model.dart';
import 'package:newapp/Features/home/logic/home_cubit.dart';
import 'package:newapp/Features/home/ui/widgets/speciality_listview_item.dart';

class SpeciallityListview extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;
  const SpeciallityListview({super.key, required this.specializationDataList, List<SpecializationsData?>? specializationsDataList});

  @override
  State<SpeciallityListview> createState() => _SpeciallityListviewState();
}

class _SpeciallityListviewState extends State<SpeciallityListview> {
  var selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.specializationDataList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSpecializationIndex = index;
                  });
                    context.read<HomeCubit>().getDoctorsList(
                    specializationId: widget.specializationDataList[index]?.id,
                  );
                },
                child: SpecialityListViewItem(
                  specializationsData: widget.specializationDataList[index],
                  itemIndex: index,
                  selectedIndex : selectedSpecializationIndex
                ),
              );
            }));
  }
}
