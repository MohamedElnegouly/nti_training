import 'package:dio/dio.dart';

class Apiservice {
  final Dio _dio;
  Apiservice(this._dio);
  final String _baseUrl = "https://fakestoreapi.com/";
  Future<dynamic> get(
      {required String endPoint,String? token}) async {
    Map<String, dynamic> header = {};
    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }
    var response =
        await _dio.get('$_baseUrl$endPoint', options: Options(headers: header));
    return response.data;
  }

  Future<dynamic> post(
      {required String endpoint, //رايح فين
      required String? token, //عنده صلاحيه ولا لا
      Map<String, dynamic>? body //فين الداتا اللى هتبعتها
      }) async {
    Map<String, dynamic> header = {};
    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }
    var response = await _dio.post('$_baseUrl$endpoint',
        options: Options(headers: header), data: body);
    return response.data;
  }

  Future<dynamic> put(
      //بتشيل كله وتحط كله تانى
      {required String endpoint, //رايح فين
      required String? token, //عنده صلاحيه ولا لا
      Map<String, dynamic>? body //فين الداتا اللى هتبعتها
      }) async {
    Map<String, dynamic> header = {};
    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }
    var response = await _dio.put('$_baseUrl$endpoint',
        options: Options(headers: header), data: body);
    return response.data;
  }

  Future<dynamic> patch(
      //بتحط الحاجه اللى انت عاوزها بس
      {required String endpoint, //رايح فين
      required String? token, //عنده صلاحيه ولا لا
      Map<String, dynamic>? body //فين الداتا اللى هتبعتها
      }) async {
    Map<String, dynamic> header = {};
    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }
    var response = await _dio.patch('$_baseUrl$endpoint',
        options: Options(headers: header), data: body);
    return response.data;
  }
}
