import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 358,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
          gradient: const LinearGradient(colors: [
            Appcolors.brown850,
            Appcolors.brawn700,
          ], begin: Alignment.centerLeft, end: Alignment.bottomRight)),
      child: Center(
        child: Text(
          text,
          style: Styles.textsty20
              .copyWith(color: Appcolors.background, fontSize: 18),
        ),
      ),
    );
  }
}
