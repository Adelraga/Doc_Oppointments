
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_appointment/Features/signup/data/models/signup_request_body.dart';
import 'package:doc_appointment/Features/signup/data/models/signup_response.dart';

import 'package:doc_appointment/cors/Networking/api_service.dart';
import 'package:doc_appointment/cors/error/failures.dart';

class SignupRepo {
  final ApiService apiService;
  SignupRepo(this.apiService);

  Future<Either<Failure,SignupResponse>> Signup(SignupRequestBody signupRequestBody) async {
    try {
      var response = await apiService.signup(signupRequestBody);

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));   //ApiResult.failure(ErrorHandler.handle(errro)); write this instead if i want to return the error as model
      }
      return left(ServerFailure(e.toString()));
    }
  }
}