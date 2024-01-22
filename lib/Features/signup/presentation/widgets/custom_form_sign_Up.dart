import 'package:doc_appointment/Features/login/view/widget/custom_login_social_icons_row.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_snackbar.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_text_field.dart';
import 'package:doc_appointment/Features/login/view/widget/or_signIn_with_custom_widget.dart';
import 'package:doc_appointment/Features/login/view/widget/password_validations.dart';
import 'package:doc_appointment/Features/signup/logic/sign_Up_cubit/sign_up_cubit.dart';
import 'package:doc_appointment/Features/signup/presentation/widgets/already_have_account.dart';
import 'package:doc_appointment/Features/signup/presentation/widgets/password_validation.dart';
import 'package:doc_appointment/cors/Helpers/navigation_extention.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:doc_appointment/cors/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomFormSignUp extends StatefulWidget {
  CutomFormSignUp({super.key});

  @override
  State<CutomFormSignUp> createState() => _CutomFormState();
}

class _CutomFormState extends State<CutomFormSignUp> {
  String? email;
  String? password;
  String? name;
  String? phome;
  String? passwordConfirmation;
  String? gender;

  bool isLoading = false;
  bool isObscureText = true;

  // late TextEditingController passwordController;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // passwordController = context.read<SignUpCubit>().passwordController;
  }

  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(
                color: ColorsManager.primaryColor,
              ),
            ),
          );
        }
        if (state is SignUpSuccess) {
          context.pop();
          Showsnackbar(context, "Sign Up Successfully 😊");
          context.pushNamed(Routes.homeScreen);
        }
        if (state is SignUpFailure) {
          context.pop();
          Showsnackbar(context, state.errMessage);
        }
      },
      child: Form(
        key: context.read<SignUpCubit>().formKey,
        autovalidateMode: autovalidateMode,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 36.h),
              CustomTextField(
                keyboardType: TextInputType.name,
                controller: context.read<SignUpCubit>().nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Name";
                  }
                },
                onChanged: (data) {
                  name = data;
                },
                hintText: 'User Name',
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                controller: context.read<SignUpCubit>().emailController,
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
                controller: context.read<SignUpCubit>().passwordController,
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
                height: 16.h,
              ),
              CustomTextField(
                controller: context.read<SignUpCubit>().phoneController,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Phone';
                  }
                },
                onChanged: (data) {
                  phome = data;
                },
                hintText: 'Phone',
                obscureText: isObscureText,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                controller: context.read<SignUpCubit>().genderController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Your Gender';
                  }
                },
                onChanged: (data) {
                  gender = data;
                },
                hintText: 'Gender',
                obscureText: isObscureText,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                controller:
                    context.read<SignUpCubit>().passwordConfirmationController,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ' Renter password';
                  }
                },
                onChanged: (data) {
                  passwordConfirmation = data;
                },
                hintText: 'Confirm Password',
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
              SizedBox(
                height: 5.h,
              ),
              PasswordValidation(),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                buttonColor: ColorsManager.primaryColor,
                width: MediaQuery.of(context).size.width * .87,
                height: MediaQuery.of(context).size.width * .12,
                title: 'Register',
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
              // PrivacyPolicyText(),
              SizedBox(
                height: 5.h,
              ),
              CustomAlreadyHaveAccount(),
              //LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}

void validateLoginScreenToLogIn(BuildContext context) {
  if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
    context.read<SignUpCubit>().Signup();
  }
}


  // void Showsnackbar(BuildContext context, String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text(message),
  //   ));
  // }

