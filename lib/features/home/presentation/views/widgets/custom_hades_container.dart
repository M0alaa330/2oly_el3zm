import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/data/model/hades.dart';

class CustomHadesContainer extends StatelessWidget {
  const CustomHadesContainer({
    super.key,
    required this.data,
  });

  final Book data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(4, 4))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "عدد الاحاديث",
                  style: Styles.textsty20.copyWith(color: Textcolor.grey700),
                ),
                Text(
                  "${data.available}", //  "1000 ",
                  style: Styles.textsty24.copyWith(color: Textcolor.brown850),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${data.name}", //  "البخاري",
                    style: Styles.textsty20.copyWith(color: Textcolor.brown850),
                  ),
                  Text(
                    "${data.id}", // "albokhari ",
                    style: Styles.textsty24.copyWith(color: Textcolor.grey700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
