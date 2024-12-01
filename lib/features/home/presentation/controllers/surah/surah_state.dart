import 'package:olly_el3zm/features/home/data/model/surah.dart';

abstract class SurahState {}

class IntialStateSurah extends SurahState {}

class LoadingStateSurah extends SurahState {}

class LoadedStateSurah extends SurahState {
  final List<Surah> surahlist;
  LoadedStateSurah({required this.surahlist});
}

class ErrorStateSurah extends SurahState {
  final String erroemsg;

  ErrorStateSurah({required this.erroemsg});
}
