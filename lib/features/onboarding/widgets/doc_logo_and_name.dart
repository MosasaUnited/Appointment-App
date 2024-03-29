import 'package:appointment_app/core/helpers/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/images.dart';
import '../../../core/theming/styles.dart';

class TapDocLogo extends StatelessWidget {
  const TapDocLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImages.appLogo,
        SizedBox(width: 10.w),
        Text(
          AppStrings.appName,
          style: Styles.font24Black700Weight,
        ),
      ],
    );
  }
}
