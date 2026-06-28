import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text, this.onTap});

  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableText(text: text, style: appStyle(13, kDark, FontWeight.w600)),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: kSecondary,
              size: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
