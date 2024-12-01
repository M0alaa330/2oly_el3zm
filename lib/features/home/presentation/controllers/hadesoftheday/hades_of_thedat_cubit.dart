import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesoftheday/hades_of_theday_state.dart';

class HadesOfThedatCubit extends Cubit<HadesOfThedayState> {
  HadesOfThedatCubit({required this.homeRepoImple})
      : super(InitialStateHadesoftheday());
  HomeRepoImple homeRepoImple;
  gethadesoftheday() async {
    emit(LoadingStateHadesoftheday());
    var value = await homeRepoImple.getHadesOfTheDay();
    value.fold((error) {
      return emit(ErrorlStateHadesoftheday(errormsg: error));
    }, (hades) {
      return emit(LoadedStateHadesoftheday(hadesoftheday: hades));
    });
  }
}
