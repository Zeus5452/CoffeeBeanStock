import 'package:dio/dio.dart';

class CoffeeApi{
  final _dio = Dio(BaseOptions(baseUrl: "http://localhost:8081"));

  Future<List> getContact() async {
    final response = await _dio.get('');
    return response.data['coffeebeans'];
  }
}