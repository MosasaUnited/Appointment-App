import 'package:appointment_app/core/helpers/images.dart';
import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/features/splash/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'app_logo_name_png.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigateToOnBoarding();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Image.asset(AppImages.appLogoWithLowOpacityPng),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 180.h),
              child: Column(
                children: [
                  const AppLogoAndNamePng(),
                  SizedBox(
                    height: 10.h,
                  ),
                  SlidingText(slidingAnimation: slidingAnimation),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kOnboardingView);
    });
  }
}
