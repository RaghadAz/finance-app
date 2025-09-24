import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_colors.dart';
import '../../../core/styling/app_styles.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 112.w,
          child: Divider(color: AppColors.greyColor),
        ),
        SizedBox(width: 12.w),
        Text("Or login with", style: AppStyles.grey12),
        SizedBox(width: 12.w),
        SizedBox(
          width: 112.w,
          child: Divider(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
