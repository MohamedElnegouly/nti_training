import 'package:dio/dio.dart';

class Failure {
  final String message;
  Failure({required this.message});
}



class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'Connection Error');
      case DioExceptionType.unknown:
        return ServerFailure(message: 'Unknown Error');
    }
  }

  // Bad Response
  factory ServerFailure.fromResponse(
    int statusCode,
    Map<String, dynamic> responseData,
  ) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        message: responseData['error'] ?? 'Something Went Wrong',
      );
    } else if (statusCode == 404) {
      return ServerFailure(message: 'Not Found');
    } else if (statusCode == 500) {
      return ServerFailure(message: 'Internal Server Error');
    } else {
      return ServerFailure(
        message: 'Opps There Was An Error, Please Try Again',
      );
    }
  }
}