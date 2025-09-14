import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutLinedButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final Color? bordersColors;
  final Color? textColor;
  final void Function()? onpressed;
  final double? textsize;

  const PrimaryOutLinedButtonWidget({
    super.key,
    this.buttonText,
    this.buttonColor,
    this.width,
    this.height,
    this.bordersRadius,
    this.textColor,
    this.onpressed,
    this.textsize,
    this.bordersColors,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: bordersColors ?? AppColors.primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      onPressed: onpressed,

      child: Text(
        buttonText ?? " ",
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontSize: textsize ?? 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
