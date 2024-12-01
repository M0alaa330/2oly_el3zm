import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

import 'package:olly_el3zm/features/home/presentation/views/widgets/container_pray_time.dart';

class PrayTimeBody extends StatelessWidget {
  PrayTimeBody({super.key});

  final Coordinates myCoordinates = Coordinates(31.4175, 31.8144);
  final CalculationParameters params = CalculationMethod.karachi.getParameters()
    ..madhab = Madhab.hanafi;

  @override
  Widget build(BuildContext context) {
    final prayerTimes = PrayerTimes.today(myCoordinates, params);
    return Scaffold(
        backgroundColor: Appcolors.background,
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
              "مواقيت الصلاه",
              style: Styles.textsty20.copyWith(color: Textcolor.white),
            ),
          ),
        ),
        body: Column(
          children: [
            ContainerPrayTime(
                text: 'Alfajr', time: DateFormat.jm().format(prayerTimes.fajr)),
            const SizedBox(
              height: 5,
            ),
            ContainerPrayTime(
                text: 'Elduha',
                time: DateFormat.jm().format(prayerTimes.sunrise)),
            const SizedBox(
              height: 5,
            ),
            ContainerPrayTime(
                text: 'Alduhr',
                time: DateFormat.jm().format(prayerTimes.dhuhr)),
            const SizedBox(
              height: 5,
            ),
            ContainerPrayTime(
                text: 'Alasr', time: DateFormat.jm().format(prayerTimes.asr)),
            const SizedBox(
              height: 5,
            ),
            ContainerPrayTime(
                text: 'Almaghrib',
                time: DateFormat.jm().format(prayerTimes.maghrib)),
            const SizedBox(
              height: 5,
            ),
            ContainerPrayTime(
                text: 'Alasha', time: DateFormat.jm().format(prayerTimes.isha)),
          ],
        ));
  }
}
/*
BlocBuilder<AzanCubit, AzanState>(
          builder: (context, state) {
            if (state is LoadedStateAzan) {
              // Check if the azanlist is null or empty
              if (state.azanlist == null || state.azanlist.isEmpty) {
                return Center(
                  child: Text(
                    "No prayer times available.",
                    style: Styles.textsty20.copyWith(color: Textcolor.white),
                  ),
                );
              }

              return ListView.builder(
                itemCount: state.azanlist.length,
                itemBuilder: (context, index) {
                  return ContainerPrayTime(
                    time: state.azanlist[index],
                  );
                },
              );
            } else if (state is ErrorStateAzan) {
              return Center(
                child: Text(
                  state.erroemsg,
                  style: Styles.textsty20.copyWith(color: Textcolor.white),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )*/