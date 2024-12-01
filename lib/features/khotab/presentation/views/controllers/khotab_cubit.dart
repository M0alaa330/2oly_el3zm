import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/khotab/data/repo/kotab_repo_imple.dart';
import 'package:olly_el3zm/features/khotab/presentation/views/controllers/khotab_state.dart';

class KhotabCubit extends Cubit<KhotabState> {
  KhotabCubit({required this.homeRepoImple}) : super(Initialstatekotab());
  KotabRepoImple homeRepoImple;
  getbooks() async {
    emit(Loadingstatekotab());
    var value = await homeRepoImple.getkhotab();
    value.fold((error) {
      return emit(Errorstatekotab(erroemsg: error));
    }, (kotab) {
      return emit(Loadedstatekotab(allkhotab: kotab));
    });
  }
}
