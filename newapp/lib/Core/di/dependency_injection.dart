import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newapp/Core/networking/api_service.dart';
import 'package:newapp/Core/networking/dio_factory.dart';
import 'package:newapp/Features/home/data/apis/home_api_service.dart';
import 'package:newapp/Features/home/data/repos/home_repo.dart';
import 'package:newapp/Features/home/logic/home_cubit.dart';
import 'package:newapp/Features/login/data/repos/login_repo.dart';
import 'package:newapp/Features/login/logic/cubit/login_cubit.dart';
import 'package:newapp/Features/sign_up.dart/data/repos/sign_up_repo.dart';
import 'package:newapp/Features/sign_up.dart/logic/sign_up_cubit.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<HomeRepo>()));
}