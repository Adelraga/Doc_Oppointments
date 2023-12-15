import 'package:doc_appointment/Features/login/data/models/login_request_body.dart';
import 'package:doc_appointment/Features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment/Features/login/view/widget/already_have_account.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_login_social_icons_row.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_row_forget_password_and_remember_me.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_snackbar.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_text_field.dart';
import 'package:doc_appointment/Features/login/view/widget/login_bloc_listner.dart';
import 'package:doc_appointment/Features/login/view/widget/or_signIn_with_custom_widget.dart';
import 'package:doc_appointment/Features/login/view/widget/password_validations.dart';
import 'package:doc_appointment/Features/login/view/widget/privacy_policy_text.dart';
import 'package:doc_appointment/cors/Helpers/navigation_extention.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:doc_appointment/cors/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomForm extends StatefulWidget {
  CutomForm({super.key});

  @override
  State<CutomForm> createState() => _CutomFormState();
}

class _CutomFormState extends State<CutomForm> {
  String? email;

  String? password;

  bool isLoading = false;
  bool isObscureText = true;

  late TextEditingController passwordController;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
       if (state is LoginLoading) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(
                color: ColorsManager.primaryColor,
              ),
            ),
          );
        }
        if (state is LoginSuccess) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        }
        if (state is LoginFailure) {
          context.pop();
          Showsnackbar(context, state.errMessage);
        }

      },
      child: Form(
        key: context.read<LoginCubit>().formKey,
        autovalidateMode: autovalidateMode,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 36.h),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                controller: context.read<LoginCubit>().emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Email";
                  }
                },
                onChanged: (data) {
                  email = data;
                },
                hintText: 'Email Address',
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                controller: context.read<LoginCubit>().passwordController,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                },
                onChanged: (data) {
                  password = data;
                },
                hintText: 'Password',
                obscureText: isObscureText,
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    child: Icon(isObscureText
                        ? Icons.visibility_off
                        : Icons.visibility)),
              ),
              SizedBox(
                height: 5.h,
              ),
              ForgetPasswordAndRememberMeRow(),
              SizedBox(
                height: 5.h,
              ),
              PasswordValidations(),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                buttonColor: ColorsManager.primaryColor,
                width: MediaQuery.of(context).size.width * .87,
                height: MediaQuery.of(context).size.width * .12,
                title: 'Login',
                onPressed: () {
                  validateLoginScreenToLogIn(context);
                },
                textColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              SizedBox(
                height: 25.h,
              ),
              OrSignInWithCustomWidget(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLoginSocialIcons(),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              PrivacyPolicyText(),
              SizedBox(
                height: 5.h,
              ),
              AlreadyHaveAccount(),
              //LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}

void validateLoginScreenToLogIn(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().login(LoginRequestBody(
        email: context.read<LoginCubit>().emailController.text,
        password: context.read<LoginCubit>().passwordController.text));
  }
}


  // void Showsnackbar(BuildContext context, String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text(message),
  //   ));
  // }

