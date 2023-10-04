import 'package:blackroad_v1/core/network/intercepter_network.dart';
import 'package:dio/dio.dart';

import '../../core/network/endpoints.dart';

class UserNetwork with Intercepter {
  Future update(Map<String, dynamic> data) async {
    try {
      final dio = await client();
      Response response = await dio.put(updateUser, data: data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future get() async {
    try {
      final dio = await client();
      Response response = await dio.get(getUser);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future uploadUserImage() async {
    try {
      final dio = await client();
      Response response = await dio.put(uploadImage);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
