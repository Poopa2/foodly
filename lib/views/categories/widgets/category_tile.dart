import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/common/app_style.dart';
import 'package:get/get.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.category});

  final dynamic category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: ListTile(
        onTap: () {
          // Handle category tap
        },
        leading: CircleAvatar(
          radius: 18.r,
          backgroundColor: kGrayLight,
          child: Text(
            category['emoji'] ?? '🍽️',
            style: TextStyle(fontSize: 24.sp),
          ),
        ),
        title: ReusableText(
          text: category['title'],
          style: appStyle(12, kDark, FontWeight.normal),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: kGray,
          size: 15.sp,
        ),
      ),
    );
  }
}
