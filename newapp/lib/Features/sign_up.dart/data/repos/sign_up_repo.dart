

import 'package:newapp/Core/networking/api_error_handeler.dart';
import 'package:newapp/Core/networking/api_result.dart';
import 'package:newapp/Core/networking/api_service.dart';
import 'package:newapp/Features/sign_up.dart/data/models/sign_up_request_body.dart';
import 'package:newapp/Features/sign_up.dart/data/models/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}