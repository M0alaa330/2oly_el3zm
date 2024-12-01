import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class CustomRow extends StatefulWidget {
  const CustomRow({super.key});

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  bool condition = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "أوافق على شروط خدمة المنصة وسياسة الخصوصية",
          style: Styles.textsty14,
        ),
        Checkbox(
            activeColor: Appcolors.grey700,
            value: condition,
            onChanged: (val) {
              setState(() {
                condition = val!;
              });
            }),
      ],
    );
  }
}
