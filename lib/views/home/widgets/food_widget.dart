import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({super.key, required this.food});

  final dynamic food;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      child: Stack(
        children: [
          Container(
            width: 150.w,
            height: 180.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                image: NetworkImage(food['imageUrl']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            right: 10.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: kSecondary,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: ReusableText(
                text: food['price'],
                style: appStyle(12, kPrimary, FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r),
                ),
              ),
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    text: food['title'],
                    style: appStyle(11, Colors.white, FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        text: food['time'],
                        style: appStyle(9, kGrayLight, FontWeight.normal),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: kSecondary, size: 12.sp),
                          ReusableText(
                            text: food['rating'].toString(),
                            style: appStyle(9, Colors.white, FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
