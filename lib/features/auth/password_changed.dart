import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeightSpace(height: 248.h),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(AppAssets.change, height: 100.h, width: 100.w),
                    Image.asset(AppAssets.check, height: 36.h, width: 47.w),
                  ],
                ),
                HeightSpace(height: 35.h),
                Text(
                  "Password Changed!",
                  style: AppStyles.primaryHeadLineStyle,
                ),
                HeightSpace(height: 10.h),
                SizedBox(
                  width: 226.w,
                  child: Text(
                    "Your password has been changed successfully.",
                    style: AppStyles.grey12.copyWith(fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                ),
                HeightSpace(height: 40.h),
                PrimaryButtonWidget(
                  onpressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                  },
                  buttonText: "Back to Login",
                  height: 56.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
