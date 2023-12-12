import 'package:flutter/material.dart';

class ForgetPasswordAndRememberMeRow extends StatefulWidget {
  const ForgetPasswordAndRememberMeRow({super.key});

  @override
  State<ForgetPasswordAndRememberMeRow> createState() => _ForgetPasswordAndRememberMeRowState();
}

class _ForgetPasswordAndRememberMeRowState extends State<ForgetPasswordAndRememberMeRow> {
  @override
    bool isChecked = false;
  Widget build(BuildContext context) {
    return            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFECECEC)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                        color: Color.fromARGB(255, 144, 144, 144),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Placeholder();
                    }));
                  },
                  child: Text(
                    'Forget Password ?',
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