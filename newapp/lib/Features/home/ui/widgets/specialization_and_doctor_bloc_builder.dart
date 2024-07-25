import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/Core/helpers/space.dart';
import 'package:newapp/Features/home/logic/home_cubit.dart';
import 'package:newapp/Features/home/logic/home_state.dart';
import 'package:newapp/Features/home/ui/widgets/doctor_listview.dart';
import 'package:newapp/Features/home/ui/widgets/doctor_speciallity_listview.dart';
class SpecializationAndDoctorBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<HomeCubit, HomeState>(
                buildWhen: ((previous, current) =>
                    current is SpecializationsLoading ||
                    current is SpecializationsSuccess ||
                    current is SpecializationsError),
                builder: (context, state) {
                  return state.maybeWhen(
                    specializationsLoading: () {
                      return const SizedBox(
                        height: 100,
                        child: Center(child: CircularProgressIndicator()),
                      );
                    },
                    specializationsSuccess: (specializationResponseModel) {
                      var specializationList =
                          specializationResponseModel.specializationDataList;
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorSpeciallityListview(
                              specializationDataList: specializationList ?? [],
                            ),
                            verticalspace(8),
                             DoctorListview(
                               doctorsList: specializationList?[0]?.doctorsList,
                             )
                          ],
                        ),
                      );
                    },
                    specializationsError: (errorHandler) {
                      return const SizedBox.shrink();
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              );
  }
}