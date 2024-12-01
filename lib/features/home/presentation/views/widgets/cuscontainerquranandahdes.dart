import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/data/model/surah.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/sora_body.dart';

class CusContainerQuranAndAhdes extends StatelessWidget {
  const CusContainerQuranAndAhdes({
    super.key,
    required this.surah,
  });
  final Surah surah;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SoraBody(
            data: surah,
          );
        }));
      },
      child: Padding(
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
                    "عدد الايات",
                    style: Styles.textsty20.copyWith(color: Textcolor.grey700),
                  ),
                  Text(
                    "${surah.ayahs.length}", //  "1000 ",
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
                      "${surah.name}", //  "البخاري",
                      style:
                          Styles.textsty20.copyWith(color: Textcolor.brown850),
                    ),
                    Text(
                      "${surah.englishName}", // "albokhari ",
                      style:
                          Styles.textsty24.copyWith(color: Textcolor.grey700),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Appcolors.brown850,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "${surah.number}",
                    style: Styles.textsty24.copyWith(color: Textcolor.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
