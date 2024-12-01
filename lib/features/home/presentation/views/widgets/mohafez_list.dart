import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/mohafez/mohafez_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/mohafez/mohafez_state.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/mohafez_container.dart';

class MohafezList extends StatelessWidget {
  const MohafezList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MohafezCubit, MohafezState>(builder: (context, state) {
      if (state is LoadedStateMohafez) {
        return SizedBox(
          height: 213,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.allmohafez.length,
              itemBuilder: (context, index) {
                return MohafezContainer(data: state.allmohafez[index]);
              }),
        );
      } else if (state is ErrorStateMohafez) {
        return Text(state.errormsg);
      } else {
        return Center(
          child: LoadingAnimationWidget.waveDots(
              color: Appcolors.brown850, size: 50),
        );
      }
    });
  }
}
