import 'package:flutter/material.dart';
import 'package:newapp/Features/home/data/models/specialization_response_model.dart';
import 'package:newapp/Features/home/ui/widgets/doctors_listview_item.dart';

class DoctorListview extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorListview({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: doctorsList?.length,
            itemBuilder: (context, index) {
              return DoctorsListviewItem(
                doctorsModel: doctorsList?[index],
              );
            }));
  }
}
