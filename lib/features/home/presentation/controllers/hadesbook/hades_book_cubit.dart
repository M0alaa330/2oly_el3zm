import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/presentation/controllers/hadesbook/hades_book_state.dart';

class HadithCubit extends Cubit<HadithBooksState> {
  HadithCubit({required this.homeRepoImple}) : super(InitialStateHadith());
  HomeRepoImple homeRepoImple;
  gethadesbooks(String bookId) async {
    emit(LoadinglStateHadith());
    var value = await homeRepoImple.fetchHadith(bookId);
    value.fold((error) {
      return emit(ErrorStateHadith(errMessage: error));
    }, (hades) {
      return emit(LoadedStateHadith(hadithList: hades));
    });
  }
}
