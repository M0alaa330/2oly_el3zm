import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';

class CustomDailyTimeRow extends StatelessWidget {
  const CustomDailyTimeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 30, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                border: Border.all(color: Appcolors.brawn700),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 1,
            width: 55,
            color: Appcolors.brown850,
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                border: Border.all(color: Appcolors.brawn700),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 1,
            width: 55,
            color: Appcolors.brown850,
          ),
          Image.asset(
            "assets/images/Vector (3).png",
            width: 24,
            height: 24,
          ),
          Container(
            height: 1,
            width: 55,
            color: Appcolors.brown850,
          ),
          Image.asset(
            "assets/images/Vector (3).png",
            width: 24,
            height: 24,
          ),
          Container(
            height: 1,
            width: 55,
            color: Appcolors.brown850,
          ),
          Image.asset(
            "assets/images/Vector (3).png",
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
