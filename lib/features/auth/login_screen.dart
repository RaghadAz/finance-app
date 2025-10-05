import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_login_buttons.dart';
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
  final formkey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                    width: 280.w,
                    child: Text(
                      "Welcome back! Again!",
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  HeightSpace(height: 32.h),
                  CustomTextField(
                    controller: emailController,
                    hintText: "Enter your email",
                    width: 331.sp,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter your email!";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(height: 15.h),
                  CustomTextField(
                    controller: passwordController,
                    hintText: "Enter your Password",
                    width: 331.sp,
                    isPassword: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter your password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      return null;
                    },
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                  ),
                  HeightSpace(height: 15.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.forgotPassword);
                      },
                      child: Text("Forgot Password?", style: AppStyles.grey12),
                    ),
                  ),
                  HeightSpace(height: 30.h),
                  PrimaryButtonWidget(
                    onpressed: () {
                      if (formkey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    buttonText: "Login",
                  ),
                  HeightSpace(height: 35.h),
                  CustomOrLoginWidget(),
                  HeightSpace(height: 22),
                  SocialLoginButtons(),
                  HeightSpace(height: 155.h),
                  InkWell(
                    onTap: () {
                      AppRoutes.registerScreen;
                    },
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          GoRouter.of(
                            context,
                          ).pushNamed(AppRoutes.registerScreen);
                        },
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
