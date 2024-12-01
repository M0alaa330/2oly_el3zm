import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class ContainerPrayTime extends StatelessWidget {
  const ContainerPrayTime({
    super.key,
    required this.text,
    required this.time,
  });
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Appcolors.background,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                    style:
                        Styles.textsty24.copyWith(color: Textcolor.brawn700)),
                Text("${time}",
                    style:
                        Styles.textsty24.copyWith(color: Textcolor.brawn700)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
