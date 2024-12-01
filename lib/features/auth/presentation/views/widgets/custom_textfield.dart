import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.controller,
      required this.ispassword,
      required this.hint});
  final TextEditingController controller;
  final bool ispassword;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 358,
      child: TextField(
        cursorColor: Appcolors.grey700,
        textAlign: TextAlign.end,
        controller: controller,
        obscureText: ispassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Styles.textsty14,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Appcolors.grey700)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
