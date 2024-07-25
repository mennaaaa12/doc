import 'package:bloc/bloc.dart';
import 'package:newapp/Core/helpers/extentions.dart';
import 'package:newapp/Core/networking/api_error_handeler.dart';
import 'package:newapp/Features/home/data/repos/home_repo.dart';
import 'package:newapp/Features/home/logic/home_state.dart';

import '../data/models/specialization_response_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  final HomeRepo _homeRepo;

  List<SpecializationsData?>? specializationsList = [];
  void getSpesialization() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (specializationResponseModel) {

     specializationsList =specializationResponseModel.specializationDataList??[];

      getDoctorsList(specializationId: specializationsList?.first?.id);

      emit(HomeState.specializationsSuccess(specializationsList));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler));
    });
  }
  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
