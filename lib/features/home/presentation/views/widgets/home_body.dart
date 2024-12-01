import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/features/khotab/presentation/views/khotab_screen.dart';
import 'package:olly_el3zm/features/doaa/presentation/views/doaa_screen.dart';
import 'package:olly_el3zm/features/home/presentation/views/main_screen.dart';
import 'package:olly_el3zm/features/books_deen/presentation/views/books_deen_screen.dart';
import 'package:olly_el3zm/features/settings/presentation/views/settaings_screen.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int pageindex = 0;
  List<Widget> pages = [
    const MainScreen(),
    const KhotabScreen(),
    const QuranScreen(),
    const DoaaScreen(),
    const SettaingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Appcolors.brawn700,
        color: Appcolors.brawn700,
        index: pageindex,
        backgroundColor: Appcolors.background,
        items: <Widget>[
          Image.asset(
            "assets/images/tabler_home-filled.png",
            width: 24,
            height: 24,
          ),
          Image.asset(
            "assets/images/ph_mosque.png",
            width: 24,
            height: 24,
          ),
          Image.asset(
            "assets/images/fluent-emoji-high-contrast_open-book.png",
            width: 24,
            height: 24,
          ),
          Image.asset(
            "assets/images/Vector.png",
            width: 24,
            height: 24,
          ),
          Image.asset(
            "assets/images/ep_setting.png",
            width: 24,
            height: 24,
          )
        ],
        onTap: (index) {
          setState(() {
            pageindex = index;
          });
        },
      ),
      body: pages[pageindex],
    );
  }
}
