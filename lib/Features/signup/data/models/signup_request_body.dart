import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String phone;
  final String password;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;
  final int gender;

  SignupRequestBody(this.name, this.phone, this.passwordConfirmation, this.gender, {required this.email, required this.password});

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
