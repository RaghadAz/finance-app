import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_icons_button.dart';
import 'package:finance_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/styling/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightSpace(height: 12.h),
                BackButtonWidget(),
                HeightSpace(height: 28.h),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "Welcome back! Again!",
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                ),
                HeightSpace(height: 32.h),
                CustomTextField(hintText: "Enter your email", width: 331.sp),
                HeightSpace(height: 15.h),
                CustomTextField(
                  hintText: "Enter your Password",
                  width: 331.sp,
                  isPassword: true,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: AppColors.greyColor,
                    size: 20.sp,
                  ),
                ),
                HeightSpace(height: 15.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?", style: AppStyles.grey12),
                ),
                HeightSpace(height: 30.h),
                PrimaryButtonWidget(onpressed: () {}, buttonText: "Login"),
                HeightSpace(height: 35.h),
                CustomOrLoginWidget(),
                HeightSpace(height: 22),
                SocialLoginButtons(),
                HeightSpace(height: 155.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: AppStyles.balck16.copyWith(
                        color: AppColors.primaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: "Register Now",
                          style: AppStyles.balck16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
