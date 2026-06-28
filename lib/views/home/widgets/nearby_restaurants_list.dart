import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/views/home/widgets/restaurant_widget.dart';

class NearbyRestaurantsList extends StatelessWidget {
  const NearbyRestaurantsList({super.key, required this.restaurants});

  final List<dynamic> restaurants;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          var restaurant = restaurants[index];
          return RestaurantWidget(restaurant: restaurant);
        },
      ),
    );
  }
}
