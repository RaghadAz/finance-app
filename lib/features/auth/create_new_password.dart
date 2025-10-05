import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController newPasswordController;
  @override
  void initState() {
    super.initState();
    newPasswordController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSpace(height: 12.h),
                  BackButtonWidget(),
                  HeightSpace(height: 28.h),
                  Text(
                    "Create new password",
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                  HeightSpace(height: 10.h),
                  Text(
                    "Your new password must be unique from those previously used.",
                  ),
                  HeightSpace(height: 32.h),
                  CustomTextField(
                    hintText: "New Password",
                    controller: newPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter the password";
                      }
                      if (value.length < 8) {
                        return "Password must be more than 8 character";
                      }
                    },
                  ),
                  HeightSpace(height: 15.h),
                  CustomTextField(
                    hintText: "Confirm Password",
                    controller: newPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter the password";
                      }
                      if (value.length < 8) {
                        return "Password must be more than 8 character";
                      }
                    },
                  ),
                  HeightSpace(height: 38.h),
                  PrimaryButtonWidget(
                    buttonText: "Reset Password",
                    onpressed: () {
                      GoRouter.of(context).pushNamed(AppRoutes.passwordChanged);
                    },
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
