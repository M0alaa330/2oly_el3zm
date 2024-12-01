import 'package:olly_el3zm/features/home/data/model/mohafez.dart';

abstract class MohafezState {}

class InitialStateMohafez extends MohafezState {}

class LoadingStateMohafez extends MohafezState {}

class LoadedStateMohafez extends MohafezState {
  final List<Reciters> allmohafez;

  LoadedStateMohafez({required this.allmohafez});
}

class ErrorStateMohafez extends MohafezState {
  final String errormsg;

  ErrorStateMohafez({required this.errormsg});
}
