import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:olly_el3zm/core/Api/api_service.dart';
import 'package:olly_el3zm/features/books_deen/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/home/data/repo/home_repo_imple.dart';
import 'package:olly_el3zm/features/khotab/data/repo/kotab_repo_imple.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoImple>(
      HomeRepoImple(apiservice: getIt.get<ApiService>()));
  getIt.registerSingleton<HomeRepoImplementaion>(
      HomeRepoImplementaion(apiService: getIt.get<ApiService>()));
  getIt.registerSingleton<KotabRepoImple>(
      KotabRepoImple(apiService: getIt.get<ApiService>()));
}
