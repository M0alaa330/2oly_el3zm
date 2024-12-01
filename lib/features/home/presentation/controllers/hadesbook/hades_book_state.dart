import 'package:olly_el3zm/features/home/data/model/hades.dart';

abstract class HadithBooksState {}

class InitialStateHadith extends HadithBooksState {}

class LoadinglStateHadith extends HadithBooksState {}

class LoadedStateHadith extends HadithBooksState {
  final List<Hadith> hadithList;

  LoadedStateHadith({required this.hadithList});
}

class ErrorStateHadith extends HadithBooksState {
  final String errMessage;

  ErrorStateHadith({required this.errMessage});
}
