import 'package:doc_appointment/cors/Themeing/styles.dart';
import 'package:flutter/material.dart';

class OrSignInWithCustomWidget extends StatelessWidget {
  const OrSignInWithCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 118.22,
          height: 1,
          color: Color(0xFF9E9E9E),
        ),
        SizedBox(
          width: 6,
        ),
        Text("Or sign in with", style: Styles.font12Gray400weight),
        SizedBox(
          width: 6,
        ),
        Container(
          width: 118.22,
          height: 1,
          color: Color(0xFF9E9E9E),
        ),
      ],
    );
  }
}
