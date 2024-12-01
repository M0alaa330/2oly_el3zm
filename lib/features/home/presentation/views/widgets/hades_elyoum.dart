import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesoftheday/hades_of_thedat_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesoftheday/hades_of_theday_state.dart';

class HadesElyoum extends StatelessWidget {
  const HadesElyoum({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Container(
        width: double.infinity,
        height: 280,
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
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "حديث اليوم",
                    style: Styles.textsty20.copyWith(color: Textcolor.brown850),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
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
            ),
            const Divider(
              color: Appcolors.brown850,
            ),
            const SizedBox(height: 10),
            BlocBuilder<HadesOfThedatCubit, HadesOfThedayState>(
              builder: (context, state) {
                if (state is LoadedStateHadesoftheday) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            state.hadesoftheday,
                            textAlign: TextAlign.justify,
                            style: Styles.textsty16
                                .copyWith(color: Textcolor.black),
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (state is ErrorlStateHadesoftheday) {
                  return Text(state.errormsg);
                } else {
                  return Center(
                      child: LoadingAnimationWidget.waveDots(
                          color: Appcolors.brown850, size: 50));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
/*
 
            )*/