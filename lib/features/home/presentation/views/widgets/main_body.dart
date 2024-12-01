import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/core/utlis/app_router.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/ayet_elyoum.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/custom_conteinar_tabbar.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/custom_daily%20_time_row.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/custom_stack.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/hades_elyoum.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/mohafez_list.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomStack(),
            const CustomDailyTimeRow(),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 12, left: 22),
              child: Image.asset("assets/images/Frame 12 (1).png"),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainerTabbar(
                      image: "assets/images/clarity_date-line.png",
                      ontap: () =>
                          GoRouter.of(context).push(AppRouter.kcalender),
                    ),
                    CustomContainerTabbar(
                      image: "assets/images/guidance_praying-room.png",
                      ontap: () =>
                          GoRouter.of(context).push(AppRouter.kpraytime),
                    ),
                    CustomContainerTabbar(
                      image:
                          "assets/images/material-symbols-light_collections-bookmark-outline.png",
                      ontap: () => GoRouter.of(context).push(AppRouter.kahdes),
                    ),
                    CustomContainerTabbar(
                      image: "assets/images/ion_book-outline.png",
                      ontap: () => GoRouter.of(context).push(AppRouter.kquran),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 40, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "التقويم",
                    style: Styles.textsty16.copyWith(color: Textcolor.brown850),
                  ),
                  Text(
                    "الصلاة",
                    style: Styles.textsty16.copyWith(color: Textcolor.brown850),
                  ),
                  Text(
                    "الحديث",
                    style: Styles.textsty16.copyWith(color: Textcolor.brown850),
                  ),
                  Text(
                    "قرآن",
                    style: Styles.textsty16.copyWith(color: Textcolor.brown850),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const AyatElyoum(),
            const SizedBox(
              height: 24,
            ),
            const HadesElyoum(),
            Padding(
              padding: const EdgeInsets.only(top: 24, right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "عرض الكل",
                    style: Styles.textsty16.copyWith(color: Textcolor.brown850),
                  ),
                  Text(
                    "المُحفظون",
                    style: Styles.textsty20.copyWith(color: Textcolor.black),
                  ),
                ],
              ),
            ),
            const MohafezList()
          ],
        ),
      ),
    );
  }
}
