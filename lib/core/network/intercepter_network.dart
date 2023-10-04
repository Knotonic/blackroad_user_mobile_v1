import 'package:dio/dio.dart';

import 'endpoints.dart';

mixin Intercepter{
  Future<Dio> client() async {
  final _dio = Dio();
  _dio.interceptors.clear();
  _dio.interceptors.add(
      InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
    return handler.next(options);
  }, onResponse: (Response response, handler) {
    // Do something with response data
    return handler.next(response); // continue
  }, onError: (DioError error, handler) async {
    return handler.next(error);
  }));
  _dio.options.baseUrl = baseUrl;

  return _dio;
}

}