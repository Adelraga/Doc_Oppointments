import 'package:doc_appointment/cors/Themeing/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogo extends StatelessWidget {
  const DocLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset(AssetsData.logo),
      SizedBox(width: 10.w),
      SvgPicture.asset(
        'assets/svgs/Docdoc.svg',
      ),
    ]);
  }
}
