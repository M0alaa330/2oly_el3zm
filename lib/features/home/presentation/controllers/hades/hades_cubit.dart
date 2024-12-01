import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hades/hades_state.dart';

class HadesCubit extends Cubit<HadesState> {
  HadesCubit({required this.homeRepoImple}) : super(InitialStateHades());
  HomeRepoImple homeRepoImple;
  gethades() async {
    emit(LoadingStateHades());
    var value = await homeRepoImple.gethades();
    value.fold((error) {
      return emit(ErrorlStateHades(errormsg: error));
    }, (hades) {
      return emit(LoadedStateHades(hades: hades));
    });
  }
}
