import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/Core/helpers/shared_pref_helpers.dart';
import 'package:newapp/Core/networking/dio_factory.dart';
import 'package:newapp/Features/login/data/models/login_request_body.dart';
import 'package:newapp/Features/login/data/repos/login_repo.dart';
import 'package:newapp/Features/login/logic/cubit/login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


   void emitLoginState()async{
     emit(const LoginState.loading());
     final response  =await _loginRepo.login(
       LoginRequestBody(
         email: emailController.text,
         password: passwordController.text
       )
     );
     response.when(success: (loginResponse){
       emit(LoginState.success(loginResponse));
     }, failure: (error){
       emit(LoginState.failure(message: error.apiErrorModel.message??''));
     });
   }


}
