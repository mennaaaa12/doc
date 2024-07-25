

import 'package:dio/dio.dart';
import 'package:newapp/Core/networking/api_constants.dart';
import 'package:newapp/Features/home/data/apis/api_constant.dart';
import 'package:newapp/Features/home/data/models/specialization_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl : ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}