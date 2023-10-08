import 'package:blackroad_v1/core/network/intercepter_network.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/constants/constants.dart';
import '../../../core/network/endpoints.dart';
import 'social_auth_network.dart';

class SignInNetwork with Intercepter {
  Future signInWithMobile(
      {required String mobileNumber, required String password}) async {
    try {
      final dio = await client();
      Response response = await dio.post(loginWithMobileNumber, data: {
        "dialCode": dialCode,
        "mobileNumber": mobileNumber,
        "password": password
      });
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future signInGoogle() async {
    try {
      UserCredential user = await SocialAuthNetwork().authGoogle();
      final dio = await client();
      Response response = await dio
          .get(loginWithSocial, queryParameters: {"id": user.user?.uid});
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future signInApple() async {
    try {
      UserCredential user = await SocialAuthNetwork().authApple();
      final dio = await client();
      Response response = await dio
          .get(loginWithSocial, queryParameters: {"id": user.user?.uid});
      return response;
    } catch (e) {
      throw e;
    }
  }
}
