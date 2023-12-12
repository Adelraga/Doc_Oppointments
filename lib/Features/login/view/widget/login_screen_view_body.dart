import 'package:doc_appointment/Features/login/view/widget/customForm.dart';
import 'package:doc_appointment/cors/Themeing/constant.dart';
import 'package:doc_appointment/cors/Themeing/styles.dart';
import 'package:flutter/material.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 31),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Welcome Back 👋",
                style: Styles.font24blue700weight,
              ),
              SizedBox(height: 8),
              SizedBox(
                width: 330,
                child: Text(
                  AssetsData.loginTextHeader,
                  style: Styles.font15Weight400,
                ),
              ),
              CutomForm(),
            ],
          ),
        ]),
      ),
    );
  }
}
