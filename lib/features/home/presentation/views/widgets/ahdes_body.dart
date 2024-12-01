import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';

import 'package:olly_el3zm/features/home/presentation/controllers/hades/hades_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hades/hades_state.dart';

import 'package:olly_el3zm/features/home/presentation/views/widgets/custom_hades_container.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/hades_details_body.dart';

class AhdesBody extends StatelessWidget {
  const AhdesBody({
    super.key,
  });

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
              "الاحاديث",
              style: Styles.textsty20.copyWith(color: Textcolor.white),
            ),
          ),
        ),
        body: BlocBuilder<HadesCubit, HadesState>(builder: (context, state) {
          if (state is LoadedStateHades) {
            return ListView.builder(
                itemCount: state.hades.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return HadesDetailsBody(
                              bookId: state.hades[index].id,
                            );
                          })),
                      child: CustomHadesContainer(data: state.hades[index]));
                });
          } else if (state is ErrorlStateHades) {
            return Text(state.errormsg);
          } else {
            return Center(
              child: LoadingAnimationWidget.waveDots(
                  color: Appcolors.brown850, size: 50),
            );
          }
        }));
  }
}
