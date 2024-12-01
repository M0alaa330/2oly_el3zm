import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/books_deen/presentation/views/controllers/books_deen_cubit.dart';
import 'package:olly_el3zm/features/books_deen/presentation/views/controllers/books_deen_state.dart';
import 'package:olly_el3zm/features/books_deen/presentation/views/widgets/Custom_container_books.dart';

class QuranBody extends StatelessWidget {
  const QuranBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.background,
        appBar: AppBar(
            backgroundColor: Appcolors.brawn700,
            centerTitle: true,
            leading: const Text(""),
            title: Text(
              "كتب دينيه ",
              style: Styles.textsty24.copyWith(color: Textcolor.white),
            )),
        body: BlocBuilder<BooksDeenCubit, BooksDeenState>(
            builder: (context, state) {
          if (state is Loadedstatebooks) {
            return ListView.builder(
                itemCount: state.allbooks.length,
                itemBuilder: (context, index) {
                  return CustomContainerBooks(book: state.allbooks[index]);
                });
          } else if (state is Errorstatebooks) {
            return Text(state.erroemsg);
          } else {
            return Center(
                child: LoadingAnimationWidget.waveDots(
                    color: Appcolors.brown850, size: 50));
          }
        }));
  }
}
