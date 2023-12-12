import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:doc_appointment/cors/Themeing/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.keyboardType,
      this.obscureText,
      this.suffixIcon});
  final String hintText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: TextField(
            onChanged: onChanged,
            obscureText: obscureText ?? false,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: ColorsManager.Text_input_gray),
                suffixIcon: suffixIcon,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsManager.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFECECEC)),
                  borderRadius: BorderRadius.circular(16),
                )),
          ),
        ),
      ],
    );
  }
}
