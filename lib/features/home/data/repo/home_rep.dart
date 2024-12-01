import 'package:dartz/dartz.dart';
import 'package:olly_el3zm/features/home/data/model/hades.dart';
import 'package:olly_el3zm/features/home/data/model/mohafez.dart';
import 'package:olly_el3zm/features/home/data/model/surah.dart';

abstract class HomeRep {
  Future<Either<String, String>> getAyahOfTheDay();
  Future<Either<String, String>> getHadesOfTheDay();
  Future<Either<String, List<Surah>>> getsurah();
  Future<Either<String, List<Book>>> gethades();
  Future<Either<String, List<Hadith>>> fetchHadith(String bookId);
  Future<Either<String, List<Reciters>>> fetchmohafez();
}
