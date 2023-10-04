//handle the exception
import 'package:dio/dio.dart';

class DioException implements Exception {
  DioException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioExceptionType.connectionError:
        message = "Connection to API server failed due to internet connection";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        message = _handleError(dioError.response!.statusCode, dioError);
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  late String message;

  String _handleError(int? statusCode, DioError dioError) {
    switch (statusCode) {
      case 400:
        return dioError.response!.data["msg"].toString();
      case 404:
        return 'The requested resource was not found';
      case 500:
        return 'Internal server error';
      case 410:
        return dioError.response!.data["msg"].toString();
      case 407:
        return dioError.response!.data["msg"].toString();
      case 409:
        return dioError.response!.data["msg"].toString();
      case 408:
        return dioError.response!.data["msg"].toString();
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
