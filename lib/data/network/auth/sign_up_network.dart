import 'package:blackroad_v1/core/app_export.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/network/endpoints.dart';
import '../../../core/network/intercepter_network.dart';
import 'social_auth_network.dart';

class SignUpNetwork with Intercepter {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future checkRegisterMobileNumber({required String mobileNumber}) async {
    try {
      final dio = await client();
      Response response = await dio.post(checkMobileNumber,
          data: {"dialCode": dialCode, "mobileNumber": mobileNumber});
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future signUpWithMobile(
      {required String mobileNumber,
      required String password,
      required String userId}) async {
    try {
      final dio = await client();
      Response response = await dio.post(register, data: {
        "id": userId,
        "dialCode": dialCode,
        "mobileNumber": mobileNumber,
        "password": password
      });
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future signUpGoogle() async {
    try {
      User? alreadyLoginUser = await auth.currentUser;
      if (alreadyLoginUser != null) {
        await auth.signOut();
      }
      UserCredential user = await SocialAuthNetwork().authGoogle();
      final dio = await client();
      Response response = await dio.post(registerSocial, data: {
        "id": user.user?.uid,
        "email": user.user?.email,
        "firstname": user.user?.email,
        "lastname": user.user?.email,
      });
      return response;
    } catch (e) {
      Logger.log("what is the error i am getting");
      Logger.log(e.toString());
      throw e;
    }
  }

  Future signUpApple() async {
    try {
       User? alreadyLoginUser = await auth.currentUser;
      if (alreadyLoginUser != null) {
        await auth.signOut();
      }
      UserCredential user = await SocialAuthNetwork().authApple();
      final dio = await client();
      Response response = await dio.post(registerSocial, data: {
        "id": user.user?.uid,
        "email": "email",
        "firstname": "firstname",
        "lastname": "lastname"
      });
      return response;
    } catch (e) {
      throw e;
    }
  }

  // Future sendMobileOtp(String mobileNumber) async {
  //   try {

  //     Logger.log("send Otp successFull");
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  Future<UserCredential> verifyMobileOtp(
      String verificationId, String smsCode) async {
    try {
      
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);
      UserCredential result = await auth.signInWithCredential(credential);
      return result;
    } catch (e) {
      throw e;
    }
  }

  Future<UserCredential> autoVerification(
      PhoneAuthCredential credential) async {
    try {
      UserCredential result = await auth.signInWithCredential(credential);

      return result;
    } catch (e) {
      throw e;
    }
  }
}
