import 'package:doc_appointment/Features/login/view/widget/custom_soical_icon_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLoginSocialIcons extends StatelessWidget {
  const CustomLoginSocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSoicalIconItem(
          icon: 'assets/svgs/google.svg',
        ),
        SizedBox(
          width: 30,
        ),
        CustomSoicalIconItem(
          icon: 'assets/svgs/facebook.svg',
        ),
        SizedBox(
          width: 30,
        ),
        CustomSoicalIconItem(
          icon: 'assets/svgs/apple.svg',
        ),
      ],
    );
  }
}
