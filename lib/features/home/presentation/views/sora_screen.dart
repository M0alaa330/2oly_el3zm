import 'package:flutter/material.dart';
import 'package:olly_el3zm/features/home/data/model/surah.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/sora_body.dart';

class SoraScreen extends StatelessWidget {
  SoraScreen({required this.data, super.key});
  Surah data;
  @override
  Widget build(BuildContext context) {
    return SoraBody(
      data: data,
    );
  }
}
