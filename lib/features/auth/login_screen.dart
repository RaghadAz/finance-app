import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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
                Container(
                  height: 41.h,
                  width: 41.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Color(0xffE8ECF4), width: 1),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primaryColor,
                      ),
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                  ),
                ),
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
                HeightSpace(height: 30.h),
                Align(
                  alignment: Alignment.center,
                  child: Text("Or login with", style: AppStyles.grey12),
                ),
                HeightSpace(height: 22),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Color(0xffE8ECF4), width: 1),
                      ),
                      height: 56.h,
                      width: 105.w,
                      child: InkWell(
                        child: Icon(
                          Icons.facebook_outlined,
                          color: AppColors.primaryColor,
                          size: 35.sp,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Color(0xffE8ECF4), width: 1),
                      ),
                      height: 56.h,
                      width: 105.w,
                      child: InkWell(
                        child: Icon(Icons.g_mobiledata, size: 35.sp),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Color(0xffE8ECF4), width: 1),
                      ),
                      height: 56.h,
                      width: 105.w,
                      child: InkWell(child: Icon(Icons.apple, size: 35.sp)),
                    ),
                  ],
                ),
                HeightSpace(height: 155.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    Text("Register Now", style: AppStyles.balck16),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
