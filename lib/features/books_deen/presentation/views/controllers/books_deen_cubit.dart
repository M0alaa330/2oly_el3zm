import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olly_el3zm/features/books_deen/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/books_deen/presentation/views/controllers/books_deen_state.dart';

class BooksDeenCubit extends Cubit<BooksDeenState> {
  BooksDeenCubit({required this.homeRepoImple}) : super(Initialstatebooks());
  HomeRepoImplementaion homeRepoImple;
  getbooks() async {
    emit(Loadingstatebooks());
    var value = await homeRepoImple.getbooks();
    value.fold((error) {
      return emit(Errorstatebooks(erroemsg: error));
    }, (books) {
      return emit(Loadedstatebooks(allbooks: books));
    });
  }
}
