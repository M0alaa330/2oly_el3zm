import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/core/utlis/app_router.dart';
import 'package:olly_el3zm/core/utlis/helper/app_lecator.dart';
import 'package:olly_el3zm/features/books_deen/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/books_deen/presentation/views/controllers/books_deen_cubit.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/ayaoftheday/aya_of_the_day_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hades/hades_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesbook/hades_book_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesoftheday/hades_of_thedat_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/mohafez/mohafez_cubit.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/surah/surah_cubit.dart';
import 'package:olly_el3zm/features/khotab/data/repo/kotab_repo_imple.dart';
import 'package:olly_el3zm/features/khotab/presentation/views/controllers/khotab_cubit.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  AyaOfTheDayCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..getayaoftheday()),
          BlocProvider(
              create: (context) =>
                  SurahCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..getsurah()),
          BlocProvider(
              create: (context) =>
                  HadesOfThedatCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..gethadesoftheday()),
          BlocProvider(
              create: (context) => BooksDeenCubit(
                  homeRepoImple: getIt.get<HomeRepoImplementaion>())
                ..getbooks()),
          BlocProvider(
              create: (context) =>
                  HadesCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..gethades()),
          BlocProvider(
            create: (context) => HadithCubit(
              homeRepoImple: getIt.get<HomeRepoImple>(),
            ),
          ),
          BlocProvider(
              create: (context) =>
                  KhotabCubit(homeRepoImple: getIt.get<KotabRepoImple>())
                    ..getbooks()),
          BlocProvider(
              create: (context) =>
                  MohafezCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..getmohafez()),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
        ));
  }
}

/*
1 - fix error of in boardind done 


*/

// class GradientTextExample extends StatelessWidget {
//   final String text;

//   const GradientTextExample(this.text, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Gradient Text Example"),
//       ),
//       body: Center(
//         child: ShaderMask(
//           shaderCallback: (bounds) => LinearGradient(
//             colors: [Appcolors.brawn500, Appcolors.brawn700],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ).createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
//           child: Text(
//             text,
//             style: Styles.textstyle32,
//           ),
//         ),
//       ),
//     );
//   }
// }
