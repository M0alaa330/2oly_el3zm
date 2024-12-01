import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/surah/surah_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/surah/surah_state.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/cuscontainerquranandahdes.dart';

class QurannBody extends StatelessWidget {
  const QurannBody({super.key});

  @override
  Widget build(BuildContext context) {
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
              "قرآن",
              style: Styles.textsty20.copyWith(color: Textcolor.white),
            ),
          ),
        ),
        body: BlocBuilder<SurahCubit, SurahState>(builder: (context, state) {
          if (state is LoadedStateSurah) {
            return ListView.builder(
                itemCount: state.surahlist.length,
                itemBuilder: (context, index) {
                  return CusContainerQuranAndAhdes(
                    surah: state.surahlist[index],
                  );
                });
          } else if (state is ErrorStateSurah) {
            return Text(state.erroemsg);
          } else {
            return Center(
                child: LoadingAnimationWidget.waveDots(
                    color: Appcolors.brown850, size: 50));
          }
        }));
  }
}
