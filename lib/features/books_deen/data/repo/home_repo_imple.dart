import 'package:dartz/dartz.dart';
import 'package:olly_el3zm/core/Api/api_service.dart';
import 'package:olly_el3zm/features/books_deen/data/model/books.dart';
import 'package:olly_el3zm/features/books_deen/data/repo/homerepo.dart';

class HomeRepoImplementaion implements Homerepo {
  ApiService apiService;
  HomeRepoImplementaion({required this.apiService});
  @override
  Future<Either<String, List<Books>>> getbooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endpoint:
              "https://api3.islamhouse.com/v3/paV29H2gm56kvLPy/main/books/ar/ar/1/25/json");
      List<Books> allbooks = [];
      for (var i in data['data']) {
        allbooks.add(Books.fromJSON(i));
      }
      return right(allbooks);
    } catch (e) {
      return left(e.toString());
    }
  }
}
