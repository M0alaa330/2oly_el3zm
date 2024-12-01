import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/ayaoftheday/aya_of_the_day_state.dart';

class AyaOfTheDayCubit extends Cubit<AppState> {
  AyaOfTheDayCubit({required this.homeRepoImple})
      : super(InitialStateAyaOfTheDay());
  HomeRepoImple homeRepoImple;
  getayaoftheday() async {
    emit(LoadingStateAyaOfTheDay());
    var value = await homeRepoImple.getAyahOfTheDay();
    value.fold((error) {
      return emit(ErrorStateAyaOfTheDay(erroemsg: error));
    }, (ayaOfTheDay) {
      return emit(LoadedStateAyaOfTheDay(
          ayaoftheday: ayaOfTheDay ));
    });
  }
}
