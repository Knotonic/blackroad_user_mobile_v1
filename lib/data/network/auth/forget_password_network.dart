import 'package:blackroad_v1/core/network/intercepter_network.dart';
import 'package:dio/dio.dart';

import '../../../core/network/endpoints.dart';

class ForgetPasswordNetwork with Intercepter {
  Future checkMobileNumber(String mobileNumber) async {
    try {
      final dio = await client();
      Response response = await dio.post(checkMobileNumberForgetPassord,
          data: {"mobileNumber": mobileNumber});
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future updateUserPassword(String password) async {
    try {
      final dio = await client();
      Response response =
          await dio.post(updatePassword, data: {"password": password});
      return response;
    } catch (e) {
      throw e;
    }
  }
}
