import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;
  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightSpace(height: 12.h),
                BackButtonWidget(),
                HeightSpace(height: 28.h),
                Text("OTP Verification", style: AppStyles.primaryHeadLineStyle),
                HeightSpace(height: 10.h),
                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppStyles.subTitlesStyle,
                ),
                HeightSpace(height: 32.h),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  controller: pinCodeController,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  textStyle: AppStyles.primaryHeadLineStyle.copyWith(
                    fontSize: 22.sp,
                  ),
                  pinTheme: PinTheme(
                    fieldHeight: 60.h,
                    fieldWidth: 70.h,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    selectedColor: AppColors.primaryColor,
                    selectedFillColor: AppColors.whiteColor,
                    activeColor: AppColors.blackColor,
                    activeFillColor: AppColors.whiteColor,
                    inactiveColor: AppColors.greyColor,
                    inactiveFillColor: Colors.white12,
                    borderWidth: 1.w,
                  ),
                  onChanged: (value) {
                    print("PIN value: $value");
                  },
                  onCompleted: (value) {
                    print("I finished");
                  },
                ),
                HeightSpace(height: 38.h),
                PrimaryButtonWidget(
                  buttonText: "Verify",
                  onpressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.createNewPassword);
                  },
                ),
                HeightSpace(height: 357.h),
                Center(
                  child: InkWell(
                    child: RichText(
                      text: TextSpan(
                        text: "Didn't received code? ",
                        style: AppStyles.balck16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        children: [
                          TextSpan(text: "Resend", style: AppStyles.balck16),
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
    );
  }
}
