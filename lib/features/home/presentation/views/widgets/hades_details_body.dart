import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesbook/hades_book_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesbook/hades_book_state.dart';

class HadesDetailsBody extends StatefulWidget {
  const HadesDetailsBody({
    super.key,
    required this.bookId,
  });
  final String bookId;

  @override
  State<HadesDetailsBody> createState() => _HadesDetailsBodyState();
}

class _HadesDetailsBodyState extends State<HadesDetailsBody> {
  @override
  void initState() {
    BlocProvider.of<HadithCubit>(context).gethadesbooks(widget.bookId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.background,
        appBar: AppBar(
          backgroundColor: Appcolors.brawn700,
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Appcolors.background,
            ),
          ),
          centerTitle: true,
          title: Text(
            widget.bookId,
            style: Styles.textsty20.copyWith(color: Textcolor.white),
          ),
        ),
        body: BlocBuilder<HadithCubit, HadithBooksState>(
            builder: (context, state) {
          if (state is LoadedStateHadith) {
            return ListView.builder(
                itemCount: state.hadithList.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  " ${index + 1} الحديث",
                                  softWrap: true,
                                  style: Styles.textsty20
                                      .copyWith(color: Textcolor.brown850),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text(
                                    state.hadithList[index].arab,
                                    softWrap: true,
                                    style: Styles.textsty16
                                        .copyWith(color: Textcolor.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ));
                });
          } else if (state is ErrorStateHadith) {
            return Text(state.errMessage);
          } else {
            return Center(
                child: LoadingAnimationWidget.waveDots(
                    color: Appcolors.brown850, size: 50));
          }
        }));
  }
}
