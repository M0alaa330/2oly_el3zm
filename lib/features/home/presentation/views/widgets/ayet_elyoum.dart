import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/ayaoftheday/aya_of_the_day_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/ayaoftheday/aya_of_the_day_state.dart';

class AyatElyoum extends StatelessWidget {
  const AyatElyoum({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
            color: Appcolors.background,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(4, 4),
                blurRadius: 8,
                spreadRadius: 2,
              )
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "آية اليوم",
                  style: Styles.textsty20.copyWith(color: Textcolor.brown850),
                ),
                const SizedBox(width: 2),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/icon.png",
                    height: 35,
                    width: 20,
                  ),
                ),
              ],
            ),
            const Divider(color: Appcolors.brown850),
            const SizedBox(height: 10),
            BlocBuilder<AyaOfTheDayCubit, AppState>(
              builder: (context, state) {
                if (state is LoadingStateAyaOfTheDay) {
                  return Center(
                      child: LoadingAnimationWidget.waveDots(
                          color: Appcolors.brown850, size: 50));
                } else if (state is ErrorStateAyaOfTheDay) {
                  return Text(state.erroemsg);
                } else if (state is LoadedStateAyaOfTheDay) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        state.ayaoftheday,
                        textAlign: TextAlign.justify,
                        style:
                            Styles.textsty16.copyWith(color: Textcolor.black),
                      ),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}


/*
 if (state is LoadedStateAyaOfTheDay) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
           data.text ?? "no aya available",
            textAlign: TextAlign.justify,
            style: Styles.textsty16.copyWith(color: Textcolor.black),
          ),
        );
      } else if (state is ErrorStateAyaOfTheDay) {
        return Text(state.erroemsg);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
*/