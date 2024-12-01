import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/widgets/custom_container.dart';
import 'package:olly_el3zm/features/khotab/data/model/khotab.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomKhotabConatiner extends StatelessWidget {
  const CustomKhotabConatiner({super.key, required this.data});
  final Khotab data;
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
        if (data.downloadurl != null && data.downloadurl!.isNotEmpty) {
          _launchPdf(data.downloadurl!);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No PDF URL available')),
          );
        }
      },
      child: CustomContainer(
          bookname: data.title!,
          bookdesc: data.desc!,
          bookauther: data.author!),
    );
  }
}
