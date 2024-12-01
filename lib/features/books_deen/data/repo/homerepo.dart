import 'package:dartz/dartz.dart';
import 'package:olly_el3zm/features/books_deen/data/model/books.dart';

abstract class Homerepo {
  Future<Either<String, List<Books>>> getbooks();
}
