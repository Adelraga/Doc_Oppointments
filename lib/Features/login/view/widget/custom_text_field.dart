import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.onChanged, this.keyboardType});
  final String hintText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            width: 380,
            height: 55,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: ShapeDecoration(
              color: Color(0xFFFDFDFF),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFECECEC)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: TextField(
              onChanged: onChanged,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color: ColorsManager.Text_input_gray),

                  //suffixIcon: IconButton(icon: Icon(Icons.clear), onPressed: () {}),

                  // prefixIcon: IconButton(
                  //   icon: Icon(Icons.search),
                  //   onPressed: () {
                  //     // Perform the search here
                  //   },
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
