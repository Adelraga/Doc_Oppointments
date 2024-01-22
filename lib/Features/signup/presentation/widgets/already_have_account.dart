import 'package:doc_appointment/Features/login/view/login_view.dart';
import 'package:doc_appointment/Features/signup/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class CustomAlreadyHaveAccount extends StatelessWidget {
  const CustomAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account yet?"),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreenView();
            }));
          },
          child: Text(
            'Login',
            style: TextStyle(
              color: Color(0xFF247CFF),
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
