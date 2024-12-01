import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/mohafez/mohafez_state.dart';

class MohafezCubit extends Cubit<MohafezState> {
  MohafezCubit({required this.homeRepoImple}) : super(InitialStateMohafez());
  HomeRepoImple homeRepoImple;
  getmohafez() async {
    emit(LoadingStateMohafez());
    var value = await homeRepoImple.fetchmohafez();
    value.fold((error) {
      return emit(ErrorStateMohafez(errormsg: error));
    }, (mohafez) {
      emit(LoadedStateMohafez(allmohafez: mohafez));
    });
  }
}
