import 'package:doc_appointment/Features/signup/presentation/widgets/sign_up_screen_view_body.dart';
import 'package:flutter/material.dart';

class SignupScreenView extends StatelessWidget {
  const SignupScreenView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SafeArea(child: SignupScreenViewBody()),
    );
  }
}
