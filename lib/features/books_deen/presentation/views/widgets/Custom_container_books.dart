import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/widgets/custom_container.dart';
import 'package:olly_el3zm/features/books_deen/data/model/books.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContainerBooks extends StatelessWidget {
  const CustomContainerBooks({
    super.key,
    required this.book,
  });
  final Books book;
  Future<void> _launchPdf(String url) async {
    final Uri pdfUrl = Uri.parse(url);
    if (!await launchUrl(pdfUrl)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (book.downloadurl != null && book.downloadurl!.isNotEmpty) {
          _launchPdf(book.downloadurl!);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No PDF URL available')),
          );
        }
      },
      child: CustomContainer(
        bookname: book.title!,
        bookdesc: book.desc!,
        bookauther: book.auther!,
      ),
    );
  }
}
