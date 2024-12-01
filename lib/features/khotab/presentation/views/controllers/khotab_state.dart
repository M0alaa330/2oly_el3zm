import 'package:olly_el3zm/features/khotab/data/model/khotab.dart';

abstract class KhotabState {}

class Initialstatekotab extends KhotabState {}

class Loadingstatekotab extends KhotabState {}

class Loadedstatekotab extends KhotabState {
  final List<Khotab> allkhotab;
  Loadedstatekotab({required this.allkhotab});
}

class Errorstatekotab extends KhotabState {
  final String erroemsg;
  Errorstatekotab({required this.erroemsg});
}
