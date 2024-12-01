import 'package:dio/dio.dart';

class ApiService {
  Dio dio;
  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get("$endpoint");
    return response.data;
  }
}
