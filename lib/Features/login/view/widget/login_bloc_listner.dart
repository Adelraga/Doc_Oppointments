import 'package:doc_appointment/Features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_snackbar.dart';
import 'package:doc_appointment/cors/Helpers/navigation_extention.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginSuccess ||
          current is LoginFailure ||
          current is LoginLoading,
      listener: (context, state) {
        if (state is LoginLoading) {
          return Showsnackbar(context, "LOADING....");
        }
        if (state is LoginSuccess) {
          context.pushNamed(Routes.homeScreen);
        }
        if (state is LoginFailure) {
          return Showsnackbar(context, state.errMessage);
        }

      },
      child: SizedBox.shrink(),
    );
  }
}
