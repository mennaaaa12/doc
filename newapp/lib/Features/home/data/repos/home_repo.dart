

import 'package:newapp/Core/networking/api_error_handeler.dart';
import 'package:newapp/Core/networking/api_result.dart';
import 'package:newapp/Features/home/data/apis/home_api_service.dart';
import 'package:newapp/Features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}