import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/khotab/presentation/views/controllers/khotab_cubit.dart';
import 'package:olly_el3zm/features/khotab/presentation/views/controllers/khotab_state.dart';
import 'package:olly_el3zm/features/khotab/presentation/views/widgets/custom_khotab_conatiner.dart';

class KhotabBody extends StatelessWidget {
  const KhotabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.background,
        appBar: AppBar(
          backgroundColor: Appcolors.brawn700,
          leading: Text(""),
          title: Text(
            "خطب",
            style: Styles.textsty20.copyWith(color: Textcolor.white),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<KhotabCubit, KhotabState>(
          builder: (context, state) {
            if (state is Loadedstatekotab) {
              return ListView.builder(
                  itemCount: state.allkhotab.length,
                  itemBuilder: (context, index) {
                    return CustomKhotabConatiner(data: state.allkhotab[index]);
                  });
            } else if (state is Errorstatekotab) {
              return Text(state.erroemsg);
            } else {
              return Center(
                  child: LoadingAnimationWidget.waveDots(
                      color: Appcolors.brown850, size: 50));
            }
          },
        ));
  }
}
