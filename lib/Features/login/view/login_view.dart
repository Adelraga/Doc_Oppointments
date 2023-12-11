import 'package:doc_appointment/Features/login/view/widget/login_screen_view_body.dart';
import 'package:flutter/material.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LoginScreenViewBody()),
    );
  }
}
  