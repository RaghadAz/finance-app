import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSpace(height: 12.h),
                  BackButtonWidget(),
                  HeightSpace(height: 28.h),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      "Hello! Register to get started",
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  HeightSpace(height: 32.h),
                  CustomTextField(
                    hintText: "Username",
                    controller: usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your username";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(height: 12.h),
                  CustomTextField(
                    hintText: "Email",
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your email";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(height: 12.h),
                  CustomTextField(
                    hintText: "Password",
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(height: 12.h),
                  CustomTextField(
                    hintText: "Password",
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(height: 30.h),
                  PrimaryButtonWidget(buttonText: "Register", onpressed: () {}),
                  HeightSpace(height: 35.h),
                  CustomOrLoginWidget(),
                  HeightSpace(height: 22.h),
                  SocialLoginButtons(),
                  HeightSpace(height: 54.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: AppStyles.balck16.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: "Login Now",
                              style: AppStyles.balck16,
                            ),
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
