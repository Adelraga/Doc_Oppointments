import 'package:doc_appointment/cors/Themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 9,
          child: SvgPicture.asset('assets/svgs/Group.svg'),
        ),
        Container(
          // Adjust the height as needed
          child: Image.asset('assets/images/doc_image.png'),
        ),
        Positioned(
          top: 245,
          child: Container(
            width: 375,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Colors.white.withOpacity(0), Colors.white],
              ),
            ),
          ),
        ),
        Positioned(
          top: 450,
          left: 50,
          child: SizedBox(
            width: 315,
            height: 500,
            child: Text(
              'Best Doctor Appointment App',
              textAlign: TextAlign.center,
              style: Styles.font40Weight700.copyWith(height: 1.2),
            ),
          ),
        ),
      ],
    );
  }
}
