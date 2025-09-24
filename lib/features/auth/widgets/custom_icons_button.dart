import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconsButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String iconPath;
  const CustomIconsButton({super.key, this.onTap, required this.iconPath});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Color(0xffE8ECF4), width: 1),
        ),
        height: 56.h,
        width: 105.w,
        child: SvgPicture.asset(iconPath, height: 24.h, width: 12.w),
      ),
    );
  }
}
