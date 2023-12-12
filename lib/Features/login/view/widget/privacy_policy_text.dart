import 'package:flutter/material.dart';

class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 40,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'By logging, you agree to our',
              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 15,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 15,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Terms & Conditions',
              style: TextStyle(
                color: Color(0xFF242424),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'and',
              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 15,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'PrivacyPolicy.',
              style: TextStyle(
                color: Color(0xFF242424),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
