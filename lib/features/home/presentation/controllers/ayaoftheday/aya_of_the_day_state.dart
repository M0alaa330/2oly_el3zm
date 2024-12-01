abstract class AppState {}

class InitialStateAyaOfTheDay extends AppState {}

class LoadingStateAyaOfTheDay extends AppState {}

class LoadedStateAyaOfTheDay extends AppState {
  final String ayaoftheday;
  LoadedStateAyaOfTheDay({required this.ayaoftheday});
}

class ErrorStateAyaOfTheDay extends AppState {
  final String erroemsg;
  ErrorStateAyaOfTheDay({required this.erroemsg});
}
