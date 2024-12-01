import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/surah/surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  SurahCubit({required this.homeRepoImple}) : super(IntialStateSurah());
  HomeRepoImple homeRepoImple;
  getsurah() async {
    emit(LoadingStateSurah());
    var value = await homeRepoImple.getsurah();
    value.fold((error) {
      emit(ErrorStateSurah(erroemsg: error));
    }, (surah) {
      emit(LoadedStateSurah(surahlist: surah));
    });
  }
}
