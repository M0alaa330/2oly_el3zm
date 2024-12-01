import 'dart:math';
import 'package:dartz/dartz.dart';
import 'package:olly_el3zm/core/Api/api_service.dart';
import 'package:olly_el3zm/features/home/data/model/hades.dart';
import 'package:olly_el3zm/features/home/data/model/mohafez.dart';
import 'package:olly_el3zm/features/home/data/model/surah.dart';
import 'package:olly_el3zm/features/home/data/repo/home_rep.dart';

class HomeRepoImple implements HomeRep {
  ApiService apiservice;
  HomeRepoImple({required this.apiservice});
  @override
  Future<Either<String, String>> getAyahOfTheDay() async {
    try {
      Map<String, dynamic> data = await apiservice.get(
          endpoint:
              "https://api.alquran.cloud/v1/ayah/${random(1, 6236)}/editions/quran-uthmani,en.asad,en.pickthall");

      final ayaOfTheDayData = data['data'][0]['text'];
      return right(ayaOfTheDayData);
    } catch (e) {
      return left(e.toString());
    }
  }

  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

  @override
  Future<Either<String, List<Surah>>> getsurah() async {
    try {
      Map<String, dynamic> surahdata = await apiservice.get(
          endpoint: "https://api.alquran.cloud/v1/quran/quran-uthmani");
      List<Surah> listsurah = [];
      for (var i in surahdata["data"]["surahs"]) {
        listsurah.add(Surah.fromJson(i));
      }
      return right(listsurah);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> getHadesOfTheDay() async {
    try {
      var data = await apiservice.get(
          endpoint:
              "https://api.hadith.gading.dev/books/muslim/${random(1, 4930)}");
      final hadesOfTheDaydata = data['data']['contents']['arab'];
      return right(hadesOfTheDaydata);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Book>>> gethades() async {
    try {
      Map<String, dynamic> hades = await apiservice.get(
          endpoint: "https://api.hadith.gading.dev/books/");
      List<Book> listhades = [];
      for (var i in hades["data"]) {
        listhades.add(Book.fromJson(i));
      }
      return right(listhades);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Hadith>>> fetchHadith(String bookId) async {
    try {
      Map<String, dynamic> data = await apiservice.get(
          endpoint:
              "https://api.hadith.gading.dev/books/$bookId?range=300-500");
      List<Hadith> hadithList = [];
      for (var item in data["data"]["hadiths"]) {
        hadithList.add(Hadith.fromJson(item));
      }
      return right(hadithList);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Reciters>>> fetchmohafez() async {
    try {
      Map<String, dynamic> data = await apiservice.get(
          endpoint: "https://www.mp3quran.net/api/v3/reciters?language=ar");
      List<Reciters> mohafezlist = [];
      for (var i in data['reciters']) {
        mohafezlist.add(Reciters.fromJson(i));
      }
      return right(mohafezlist);
    } catch (e) {
      return left(e.toString());
    }
  }
}
