import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSpace(height: 12.h),
                  BackButtonWidget(),
                  HeightSpace(height: 28.h),

                  Text(
                    "Forgot Password?",

                    style: AppStyles.primaryHeadLineStyle,
                  ),
                  HeightSpace(height: 10.h),
                  Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account",
                    style: AppStyles.grey12,
                  ),

                  HeightSpace(height: 32.h),
                  CustomTextField(
                    hintText: "Enter your email",
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your email";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(height: 38.h),
                  PrimaryButtonWidget(
                    onpressed: () {
                      GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.createNewPassword);
                    },
                    buttonText: "Send Code",
                  ),
                  HeightSpace(height: 361.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Remember password? ",
                          style: AppStyles.balck16.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(text: "Login", style: AppStyles.balck16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
