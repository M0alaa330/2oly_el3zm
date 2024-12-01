import 'package:dartz/dartz.dart';
import 'package:olly_el3zm/core/Api/api_service.dart';
import 'package:olly_el3zm/features/khotab/data/model/khotab.dart';
import 'package:olly_el3zm/features/khotab/data/repo/khotabrepo.dart';

class KotabRepoImple implements Khotabrepo {
  ApiService apiService;
  KotabRepoImple({required this.apiService});
  @override
  Future<Either<String, List<Khotab>>> getkhotab() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endpoint:
              "https://api3.islamhouse.com/v3/paV29H2gm56kvLPy/main/khotab/ar/ar/1/25/json");
      List<Khotab> khotablist = [];
      for (var i in data['data']) {
        khotablist.add(Khotab.fromJSON(i));
      }
      return right(khotablist);
    } catch (e) {
      return left(e.toString());
    }
  }
}
