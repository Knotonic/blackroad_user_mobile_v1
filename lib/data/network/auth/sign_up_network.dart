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
          data: {"dialCode": "+91", "mobileNumber": mobileNumber});
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future signUpWithMobile(
      {required String mobileNumber, required String password}) async {
    try {
      final dio = await client();
      Response response = await dio.post(register, data: {
        "id": "id",
        "dialCode": "+91",
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
      UserCredential user = await SocialAuthNetwork().authGoogle();
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

  Future signUpApple() async {
    try {
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

  Future sendMobileOtp(String mobileNumber) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: '+91${mobileNumber}',
        verificationCompleted: (PhoneAuthCredential credential) {
          //this is only for android not for IOS
        },
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {},
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      throw e;
    }
  }

  Future verifyMobileOtp(String verificationId, String smsCode) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);
      await auth.signInWithCredential(credential);
    } catch (e) {
      throw e;
    }
  }
}
