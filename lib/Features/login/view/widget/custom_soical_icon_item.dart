import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSoicalIconItem extends StatelessWidget {
  const CustomSoicalIconItem({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return     Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Color(0xFFF5F5F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: SvgPicture.asset(
            icon,
          ),
        );
  }
}