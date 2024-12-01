import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Appcolors.brawn700),
    );
  }
}
