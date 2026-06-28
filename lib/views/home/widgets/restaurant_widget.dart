import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({super.key, required this.restaurant, this.onTap});

  final dynamic restaurant;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        child: Stack(
          children: [
            Container(
              width: width,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: DecorationImage(
                  image: NetworkImage(restaurant['imageUrl']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10.h,
              right: 10.w,
              child: CircleAvatar(
                radius: 22.r,
                backgroundImage: NetworkImage(restaurant['logoUrl']),
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
                padding: EdgeInsets.all(10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: restaurant['title'],
                          style: appStyle(12, Colors.white, FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: kSecondary, size: 14.sp),
                            SizedBox(width: 3.w),
                            ReusableText(
                              text: restaurant['rating'].toString(),
                              style: appStyle(
                                11,
                                Colors.white,
                                FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: restaurant['time'],
                          style: appStyle(9, kGrayLight, FontWeight.normal),
                        ),
                        ReusableText(
                          text:
                              "${restaurant['ratingCount']} reviews and ratings",
                          style: appStyle(9, kGrayLight, FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
