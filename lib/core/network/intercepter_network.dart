import 'package:blackroad_v1/core/app_export.dart';
import 'package:dio/dio.dart';

import 'endpoints.dart';

mixin Intercepter {
  Future<Dio> client() async {
    final _dio = Dio();
    _dio.interceptors.clear();
    _dio.interceptors.add(
        InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      Logger.log(options.uri.toString());
      Logger.log(options.data);
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      // Do something with response data
      return handler.next(response); // continue
    }, onError: (DioError error, handler) async {
      return handler.next(error);
    }));
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 8);
    _dio.options.receiveTimeout = Duration(seconds: 8);
    return _dio;
  }
}
