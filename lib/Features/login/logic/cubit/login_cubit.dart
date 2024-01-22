import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:doc_appointment/Features/login/data/models/login_request_body.dart';
import 'package:doc_appointment/Features/login/data/models/login_response.dart';
import 'package:doc_appointment/Features/login/data/repos/login_repo.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final GlobalKey<FlutterPwValidatorState> validatorKey =
      GlobalKey<FlutterPwValidatorState>();

  LoginCubit(this.loginRepo) : super(LoginInitial());

  Future<void> login() async {
    emit(LoginLoading());
    var result = await loginRepo.login(
      LoginRequestBody(
          email: emailController.text, password: passwordController.text),
    );

    result.fold((failure) => {emit(LoginFailure(failure.errMessage))},
        (response) => {emit(LoginSuccess(response))});
  }
}
