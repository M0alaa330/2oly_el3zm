import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';

abstract class Styles {
  final Color textcolor;
  Styles(this.textcolor);
  static TextStyle textsty40 = GoogleFonts.elMessiri(
      fontSize: 40, fontWeight: FontWeight.w600, color: Textcolor.white);
  static TextStyle textsty32 = GoogleFonts.elMessiri(
      fontSize: 32, fontWeight: FontWeight.w600, color: Textcolor.white);
  static TextStyle textsty24 = GoogleFonts.elMessiri(
      fontSize: 24, fontWeight: FontWeight.w400, color: Textcolor.white);
  static TextStyle textsty16 = GoogleFonts.elMessiri(
      fontSize: 16, fontWeight: FontWeight.w500, color: Textcolor.white);
  static TextStyle textstyle32 = GoogleFonts.elMessiri(
      fontSize: 32, fontWeight: FontWeight.w700, color: Textcolor.white);
  static TextStyle textsty14 = GoogleFonts.elMessiri(
      fontSize: 14, fontWeight: FontWeight.w400, color: Textcolor.grey700);
  static TextStyle textsty20 = GoogleFonts.elMessiri(
      fontSize: 20, fontWeight: FontWeight.w400, color: Textcolor.black);
  static TextStyle textsty28 = GoogleFonts.amiriQuran(
      fontSize: 28, fontWeight: FontWeight.bold, color: Textcolor.black);
  static TextStyle textsty26 = GoogleFonts.amiriQuran(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Textcolor.black,
      fontStyle: FontStyle.italic);
}
