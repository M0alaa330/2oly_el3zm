import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.bookname,
    required this.bookdesc,
    required this.bookauther,
  });

  final String bookname;
  final String bookdesc;
  final String bookauther;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Appcolors.background,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  bookname, //  "أحكام المصافحة",
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: Styles.textsty24.copyWith(color: Textcolor.brawn700),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  bookdesc, //"كتيب نافع جمع فيه المؤلف عددًا من مسائل وأحكام المصافحة في الإسلام",
                  style: Styles.textsty16.copyWith(color: Textcolor.grey700),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  bookauther, //"فهد بن يحيى العماري",
                  style: Styles.textsty14.copyWith(color: Textcolor.brown850),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
