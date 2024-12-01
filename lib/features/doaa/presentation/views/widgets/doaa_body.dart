import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class DoaaBody extends StatefulWidget {
  const DoaaBody({super.key});

  @override
  State<DoaaBody> createState() => _DoaaBodyState();
}

class _DoaaBodyState extends State<DoaaBody> {
  int initialnum = 0;
  String word = "سبحان الله";
  List<String> azkar = [
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ ",
    "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ ",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",
    "أستغفر الله ",
    "الْلَّهُ أَكْبَرُ "
  ];
  int wordindex = 0;

  tsabe7() {
    setState(() {
      initialnum++;
      if (initialnum == 30) {
        initialnum = 0;
        wordindex = (wordindex + 1) % word.length;
        word = azkar[wordindex];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
      appBar: AppBar(
        backgroundColor: Appcolors.brawn700,
        leading: const Text(""),
        centerTitle: true,
        title: Text(
          "التسبيح",
          style: Styles.textsty20.copyWith(color: Textcolor.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              word,
              style: Styles.textsty24.copyWith(color: Textcolor.black),
            ),
            Text(
              "عدد التسبيحات",
              style: Styles.textsty20.copyWith(color: Textcolor.brown850),
            ),
            Text(
              "$initialnum",
              style: Styles.textsty32.copyWith(color: Textcolor.grey700),
            ),
            InkWell(
              splashColor: Colors.black26,
              radius: 25,
              onTap: () {
                tsabe7();
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Appcolors.beige,
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 1,
                          offset: Offset(4, 4),
                          blurRadius: 8,
                          color: Colors.black26)
                    ]),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Appcolors.brawn700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
