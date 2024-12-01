import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/core/utlis/helper/app_lecator.dart';
import 'package:olly_el3zm/features/home/data/model/hades.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesbook/hades_book_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/hades_details_body.dart';

class HadesDetailsScreen extends StatelessWidget {
  const HadesDetailsScreen({super.key, required this.data});
  final Hadith data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HadithCubit(homeRepoImple: getIt.get<HomeRepoImple>())
            ..gethadesbooks(data.id),
      child: HadesDetailsBody(
        bookId: data.id,
      ),
    );
  }
}
