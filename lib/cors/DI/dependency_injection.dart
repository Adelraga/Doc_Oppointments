import 'package:dio/dio.dart';
import 'package:doc_appointment/Features/login/data/repos/login_repo.dart';
import 'package:doc_appointment/Features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment/Features/signup/data/repos/signup_repo.dart';
import 'package:doc_appointment/Features/signup/logic/sign_Up_cubit/sign_up_cubit.dart';
import 'package:doc_appointment/cors/DI/dio_factory_logger.dart';
import 'package:doc_appointment/cors/Networking/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void initGetIt() {
  Dio dio = DioFactory.getDio();
  // singleton is the used of method we take acopy of it many times so we make it one time and reused it  /// here a singleton for apiservice
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// here a singleton for apiservice

  // login
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // signup
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
}
