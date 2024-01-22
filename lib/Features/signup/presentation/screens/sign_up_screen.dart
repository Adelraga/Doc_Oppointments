import 'package:doc_appointment/Features/signup/logic/sign_Up_cubit/sign_up_cubit.dart';
import 'package:doc_appointment/Features/signup/presentation/widgets/sign_up_screen_view_body.dart';
import 'package:doc_appointment/cors/DI/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreenView extends StatelessWidget {
  const SignupScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => getIt<SignUpCubit>(),
        child: SignupScreenViewBody(),
      )),
    );
  }
}

