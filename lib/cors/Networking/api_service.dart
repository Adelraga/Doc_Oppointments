import 'package:dio/dio.dart';
import 'package:doc_appointment/Features/login/data/models/login_request_body.dart';
import 'package:doc_appointment/Features/login/data/models/login_response.dart';
import 'package:doc_appointment/cors/Networking/api_constants.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl) //BaseUrl
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login) // the endpoint
  Future<LoginResponse> login( @Body() LoginRequestBody loginRequestBody);

  // // ignore: unnecessary_brace_in_string_interps
  // @GET('/users/{id}') // the endpoint
  // Future<Users> getUerById(@Path('id') int id);

  // @POST('/users') // the endpoint
  // Future<Users> createNewUser(
  //     @Body() Users newUser, @Header('Authorization') String token);

  // @DELETE('/users/{id}') // the endpoint
  // Future<dynamic> deleteUser(
  //     @Path('id') int id, @Header('Authorization') String token);
}

// to create the web_services.g.dart use this commend ==>"flutter pub run build_runner build"

// note i must write this line part 'web_services.g.dart'; and the name must be the same name of the file 
// web_services.dart