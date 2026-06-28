import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/home/widgets/food_widget.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key, required this.foods});

  final List<dynamic> foods;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: List.generate(foods.length, (i) {
          var food = foods[i];
          return FoodWidget(food: food);
        }),
      ),
    );
  }
}
