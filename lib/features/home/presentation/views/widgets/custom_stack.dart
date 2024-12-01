import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/custom_slider.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    // HijriCalendar todayHijri = HijriCalendar.now();
    // // Get the day name and month name for Gregorian date
    // String gregorianDayName =
    //     DateFormat.EEEE('ar').format(now); // e.g., "الأحد" (Arabic)
    // String gregorianMonthName =
    //     DateFormat.MMMM('ar').format(now); // e.g., "نوفمبر" (Arabic)
    // String gregorianDayNum = DateFormat.d('ar').format(now);
    // // Get the day name and month name for Hijri date
    // String hijriDayName = todayHijri.getDayName(); // e.g., "السبت"
    // String hijriMonthName = todayHijri.getLongMonthName(); // e.g., "ربيع الآخر"
    String formattedTime = DateFormat('hh:mm a').format(now);
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: 280,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/images/background.jpeg",
              ),
              fit: BoxFit.cover,
            )),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black12,
            )),
        Positioned(
            top: 138.5,
            bottom: 66.5,
            right: 200,
            left: 24,
            child: Column(
              children: [
                Text(
                  "الثلاثاء , 13 مارس",
                  style: Styles.textsty16,
                ),
                Text(
                  " ٢٢ جمادي الاول |١٤٤٦ هجريا ",
                  style: Styles.textsty16,
                )
              ],
            )),
        Positioned(
            bottom: 28,
            left: 222,
            top: 131,
            right: 48,
            child: HalfCircleSlider(
                minValue: 0, maxValue: 360, onChanged: (value) {})),
        Positioned(
          left: 256,
          right: 81,
          bottom: 69,
          top: 155,
          child: Column(
            children: [
              Text("الفجر",
                  style: Styles.textsty16.copyWith(color: Textcolor.brown850)),
              Text(formattedTime,
                  style: Styles.textsty16.copyWith(color: Textcolor.brawn700)),
            ],
          ),
        ),
        Positioned(
            top: 235,
            right: 24,
            bottom: 20,
            left: 262,
            child: Text("دمياط ، رأس البر ", style: Styles.textsty16))
      ],
    );
  }
}
