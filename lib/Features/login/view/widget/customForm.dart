import 'package:doc_appointment/Features/login/view/widget/custom_login_social_icons_row.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_row_forget_password_and_remember_me.dart';
import 'package:doc_appointment/Features/login/view/widget/custom_text_field.dart';
import 'package:doc_appointment/Features/login/view/widget/or_signIn_with_custom_widget.dart';
import 'package:doc_appointment/Features/login/view/widget/privacy_policy_text.dart';
import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:doc_appointment/cors/Themeing/styles.dart';
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

  final formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 36.h),
            CustomTextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (data) {
                email = data;
              },
              hintText: 'Email Address',
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              keyboardType: TextInputType.visiblePassword,
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
                  child: Icon(
                      isObscureText ? Icons.visibility_off : Icons.visibility)),
            ),
            SizedBox(
              height: 5.h,
            ),
            ForgetPasswordAndRememberMeRow(),
            SizedBox(
              height: 30.h,
            ),
            CustomButton(
              buttonColor: ColorsManager.primaryColor,
              width: MediaQuery.of(context).size.width * .87,
              height: MediaQuery.of(context).size.width * .12,
              title: 'Login',
              onPressed: () {},
              textColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            SizedBox(
              height: 46.h,
            ),
            OrSignInWithCustomWidget(),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLoginSocialIcons(),
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            PrivacyPolicyText(),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account yet?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Placeholder();
                    }));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF247CFF),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void Showsnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
