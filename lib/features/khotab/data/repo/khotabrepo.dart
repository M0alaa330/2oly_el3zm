import 'package:dartz/dartz.dart';
import 'package:olly_el3zm/features/khotab/data/model/khotab.dart';

abstract class Khotabrepo {
  Future<Either<String, List<Khotab>>> getkhotab();
}
