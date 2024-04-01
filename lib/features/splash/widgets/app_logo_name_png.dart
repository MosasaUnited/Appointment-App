import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/images.dart';
import '../../../core/helpers/strings.dart';
import '../../../core/theming/styles.dart';

class AppLogoAndNamePng extends StatelessWidget {
  const AppLogoAndNamePng({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.appLogoPng, height: 60.h),
          const SizedBox(
            width: 10,
          ),
          Text(AppStrings.appName, style: Styles.font24Black700Weight),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
