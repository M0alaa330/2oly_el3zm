import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';

class CustomContainerTabbar extends StatelessWidget {
  const CustomContainerTabbar(
      {super.key, required this.image, required this.ontap});
  final String image;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Appcolors.brawn700),
        child: Center(child: Image.asset(image)),
      ),
    );
  }
}
