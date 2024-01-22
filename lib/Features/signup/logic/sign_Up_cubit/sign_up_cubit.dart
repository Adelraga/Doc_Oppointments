import 'package:bloc/bloc.dart';
import 'package:doc_appointment/Features/signup/data/models/signup_request_body.dart';
import 'package:doc_appointment/Features/signup/data/models/signup_response.dart';
import 'package:doc_appointment/Features/signup/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignupRepo signupRepo;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  final GlobalKey<FlutterPwValidatorState> validatorKey =
      GlobalKey<FlutterPwValidatorState>();

  SignUpCubit(this.signupRepo) : super(SignUpInitial());

  Future<void> login(SignupRequestBody signUpRequestBody) async {
    emit(SignUpLoading());
    var result = await signupRepo.Signup(signUpRequestBody);
    result.fold((failure) => {emit(SignUpFailure(failure.errMessage))},
        (response) => {emit(SignUpSuccess(response))});
  }
}
