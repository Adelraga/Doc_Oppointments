
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_appointment/Features/login/data/models/login_request_body.dart';
import 'package:doc_appointment/Features/login/data/models/login_response.dart';
import 'package:doc_appointment/cors/Networking/api_service.dart';
import 'package:doc_appointment/cors/error/failures.dart';

class LoginRepo {
  final ApiService apiService;
  LoginRepo(this.apiService);

  Future<Either<Failure,LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      var response = await apiService.login(loginRequestBody);

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));   //ApiResult.failure(ErrorHandler.handle(errro)); write this instead if i want to return the error as model
      }
      return left(ServerFailure(e.toString()));
    }
  }
}