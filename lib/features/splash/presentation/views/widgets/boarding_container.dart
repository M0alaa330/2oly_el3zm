import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class BoardingContainer extends StatelessWidget {
  const BoardingContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.ontap,
      required this.ontap2});
  final String text1;
  final String text2;
  final dynamic ontap;
  final dynamic ontap2;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.304, // 40% of screen height
      width: screenWidth * 0.358,
      decoration: BoxDecoration(
          color: Appcolors.black54, borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text1, style: Styles.textsty32),
          const SizedBox(
            height: 26,
          ),
          Text(
            text2,
            style: Styles.textsty24,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: ontap2,
                child: Container(
                  height: 43,
                  width: 156,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(31),
                      border: Border.all(width: 2, color: Appcolors.grey700)),
                  child: Center(
                    child: Text(
                      "تخطي",
                      style:
                          Styles.textsty20.copyWith(color: Textcolor.grey700),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: ontap,
                child: Container(
                  height: 43,
                  width: 156,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31),
                    border: Border.all(width: 2, color: Appcolors.brawn500),
                    color: Appcolors.background,
                  ),
                  child: Center(
                    child: Text(
                      "متابعه",
                      style: Styles.textsty20,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
