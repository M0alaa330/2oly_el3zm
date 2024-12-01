import 'package:olly_el3zm/features/books_deen/data/model/books.dart';

abstract class BooksDeenState {}

class Initialstatebooks extends BooksDeenState {}

class Loadingstatebooks extends BooksDeenState {}

class Loadedstatebooks extends BooksDeenState {
  final List<Books> allbooks;
  Loadedstatebooks({required this.allbooks});
}

class Errorstatebooks extends BooksDeenState {
  final String erroemsg;
  Errorstatebooks({required this.erroemsg});
}
