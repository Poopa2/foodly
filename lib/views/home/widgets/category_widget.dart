import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/category_controller.dart';
import 'package:foodly/views/categories/all_categories.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, this.category});

  final dynamic category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return GestureDetector(
      onTap: () {
        if (controller.categoryValue == category['_id']) {
          controller.updateCategory = '';
          controller.updateTitle = '';
        } else if (category['value'] == 'more') {
          Get.to(
            () => const AllCategories(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 900),
          );
        } else {
          controller.updateCategory = category['_id'];
          controller.updateTitle = category['title'];
        }
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(right: 8.w),
          padding: EdgeInsets.all(8.w),
          width: 80.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: controller.categoryValue == category['_id']
                  ? kSecondary
                  : kOffWhite,
              width: .5.w,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                category['emoji'] ?? '🍽️',
                style: TextStyle(fontSize: 35.sp),
              ),
              SizedBox(height: 4.h),
              ReusableText(
                text: category['title'],
                style: appStyle(10, kDark, FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
