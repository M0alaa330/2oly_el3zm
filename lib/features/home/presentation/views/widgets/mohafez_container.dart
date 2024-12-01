import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/data/model/mohafez.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/list_mohafez_surah.dart';

class MohafezContainer extends StatelessWidget {
  const MohafezContainer({
    super.key,
    required this.data,
  });
  final Reciters data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ListMohafezSurah(data: data);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 181,
          width: 165,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Appcolors.brawn700,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 8, color: Colors.black26, offset: Offset(4, 4))
              ]),
          child: Column(
            children: [
              Image.asset(
                "assets/images/person.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: 81,
                decoration: const BoxDecoration(
                    color: Appcolors.background,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          "${data.name}",
                          style:
                              Styles.textsty16.copyWith(color: Textcolor.black),
                        ),
                      ),
                      Text(
                        "مُحفظ",
                        style:
                            Styles.textsty16.copyWith(color: Textcolor.grey700),
                      ),
                      Text(
                        "المراجعات",
                        style:
                            Styles.textsty14.copyWith(color: Textcolor.grey700),
                      ),
                    ],
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
