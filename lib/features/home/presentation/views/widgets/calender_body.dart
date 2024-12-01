import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:islamic_hijri_calendar/islamic_hijri_calendar.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderBody extends StatelessWidget {
  const CalenderBody({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    HijriCalendar todayhijri = HijriCalendar.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.brawn700,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Appcolors.background,
            size: 20,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        title: Center(
          child: Text(
            "التقويم",
            style: Styles.textsty20.copyWith(color: Textcolor.white),
          ),
        ),
      ),
      backgroundColor: Appcolors.background,
      body: Center(
        child: Column(
          children: [
            Text(
              'التاريخ الهجري: ${todayhijri.hDay}-${todayhijri.hMonth}-${todayhijri.hYear}',
              style: Styles.textsty20.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('التاريخ الميلادي: ${today.day}-${today.month}-${today.year}',
                style: Styles.textsty20.copyWith(color: Colors.black)),
            IslamicHijriCalendar(
              highlightBorder: Appcolors.brawn700,
              adjustmentValue: 0,
              isGoogleFont: true,
              fontFamilyName: "Lato",
              getSelectedEnglishDate: (selectedDate) {
                print("English Date : $selectedDate");
              },
              getSelectedHijriDate: (selectedDate) {
                print("Hijri Date : $selectedDate");
              },
              isDisablePreviousNextMonthDates: true,
            ),
          ],
        ),
      ),
    );
  }
}
