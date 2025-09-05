import 'package:dio/dio.dart';

class Apiservice {
  final Dio _dio;
  Apiservice(this._dio);
  final String _baseUrl = "https://fakestoreapi.com/";
  Future<dynamic> get(
      {required String endPoint, required String? token}) async {
    Map<String, dynamic> header = {};
    if (token != null) {
      header.addAll({
        'Authorization':'Bearer $token'}
      );
    }
    var response = await _dio.get('$_baseUrl$endPoint', options: Options(headers: header));
    return response.data;
  }
}
