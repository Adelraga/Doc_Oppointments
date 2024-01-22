import 'package:doc_appointment/Features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment/Features/login/view/widget/login_screen_view_body.dart';
import 'package:doc_appointment/cors/DI/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: LoginScreenViewBody(),
      )),
    );
  }
}
