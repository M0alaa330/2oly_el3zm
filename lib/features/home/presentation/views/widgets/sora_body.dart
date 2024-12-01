import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/data/model/surah.dart';

class SoraBody extends StatelessWidget {
  const SoraBody({super.key, required this.data});
  final Surah data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.beige,
        appBar: AppBar(
          backgroundColor: Appcolors.brawn700,
          elevation: 0,
          leading: IconButton(
              onPressed: () => GoRouter.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Appcolors.background,
              )),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0, right: 8),
              child: Text(
                data.name,
                style: Styles.textsty28.copyWith(color: Textcolor.white),
              ),
            ),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: RichText(
              text: TextSpan(
                children: List.generate(
                  data.ayahs.length,
                  (index) {
                    return TextSpan(
                        text:
                            '${data.ayahs[index].text} \uFD3F${index + 1}\uFD3E',
                        style:
                            Styles.textsty24.copyWith(color: Textcolor.black));
                  },
                ),
              ),
            ),
          ),
        ));
  }
}

/*

 List.generate(
                data.ayahs.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Flexible(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: data.ayahs[index].text,
                                style: Styles.textsty24.copyWith(
                                  color: Textcolor.black,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  );
                },
              ),
*/