import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.primaryColor,
  );
  static TextStyle font40Weight700 = TextStyle(
    color: Color(0xFF247CFF),
    fontSize: 38,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font15Weight400 = TextStyle(
    color: Color(0xFF757575),
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const textStyle18 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
