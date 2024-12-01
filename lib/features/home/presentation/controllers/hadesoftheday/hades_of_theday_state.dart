abstract class HadesOfThedayState {}

class InitialStateHadesoftheday extends HadesOfThedayState {}

class LoadingStateHadesoftheday extends HadesOfThedayState {}

class LoadedStateHadesoftheday extends HadesOfThedayState {
  final String hadesoftheday;
  LoadedStateHadesoftheday({required this.hadesoftheday});
}

class ErrorlStateHadesoftheday extends HadesOfThedayState {
  final String errormsg;
  ErrorlStateHadesoftheday({required this.errormsg});
}
