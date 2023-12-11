import 'package:doc_appointment/Features/onBoarding/view/widgets/CustomButton.dart';
import 'package:doc_appointment/Features/onBoarding/view/widgets/doc_logo_widget.dart';
import 'package:doc_appointment/Features/onBoarding/view/widgets/doctor_image_and_text.dart';
import 'package:doc_appointment/cors/Helpers/navigation_extention.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:doc_appointment/cors/Themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            DocLogo(),
            SizedBox(height: 30.h),
            DoctorImageAndText(),
            SizedBox(height: 25.h),
            SizedBox(
              width: 370,
              child: Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                textAlign: TextAlign.center,
                style: Styles.font15Weight400,
              ),
            ),
            SizedBox(height: 30.h),
            CustomButton(
              title: "Get Started",
              textColor: Colors.white,
              buttonColor: ColorsManager.primaryColor,
              height: 48.h,
              width: 300.w,
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
