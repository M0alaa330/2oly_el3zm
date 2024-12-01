import 'package:olly_el3zm/features/home/data/model/hades.dart';

abstract class HadesState {}

class InitialStateHades extends HadesState {}

class LoadingStateHades extends HadesState {}

class LoadedStateHades extends HadesState {
  final List<Book> hades;
  LoadedStateHades({required this.hades});
}

class ErrorlStateHades extends HadesState {
  final String errormsg;
  ErrorlStateHades({required this.errormsg});
}
