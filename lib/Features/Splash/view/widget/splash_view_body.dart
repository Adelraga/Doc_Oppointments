import 'package:doc_appointment/cors/Helpers/navigation_extention.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 4), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    /* with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }
*/

    controller.forward();
    Future.delayed(const Duration(seconds: 4), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fadeIn, duration: Duration(seconds: 2));

      // context.go('/homeView');
      (context).pushNamed(Routes.onBoardingScreen);
    });
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(alignment: Alignment.center, children: [
          Positioned(
            child: Center(
              child: SvgPicture.asset(
                'assets/svgs/Group.svg',
                fit: BoxFit.cover,
                width: 400.w,
              ),
            ),
          ),
          FadeTransition(
            opacity: animation,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/logo.svg',
                  width: 60,
                ),
                const SizedBox(width: 20),
                SvgPicture.asset(
                  'assets/svgs/Docdoc.svg',
                  width: 130,
                ),
              ],
              // Adjust the height as needed
            ),
          ),
        ]),
      ],
    );
  }
}

void navigateToHome() {}
