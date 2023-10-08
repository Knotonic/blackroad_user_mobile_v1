import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/hide_keyboard.dart';
import '../../../core/utils/message_dialogue_utils.dart';
import '../../../core/utils/progress_dialog_utils.dart';
import '../../../data/network/auth/sign_up_network.dart';
import '../models/sign_up_model.dart';
import '/core/app_export.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpNetwork _repository;
  SignUpBloc(SignUpState initialState, this._repository) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<SignUpChangeMobileNumberEvent>(_changeMobileNumber);
    on<SignUpSubmitEvent>(_signUp);
    on<SignUpGoogleEvent>(_signUpGoogle);
    on<SignUpAppleEvent>(_signUpApple);
  }
  TextEditingController mobileNumberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(mobileNumber: ''));
  }

  _changeMobileNumber(
    SignUpChangeMobileNumberEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(mobileNumber: event.data));
  }

  _signUp(
    SignUpSubmitEvent event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      final isValid = formKey.currentState?.validate();
      if (!isValid!) {
        return;
      }

      formKey.currentState?.save();
      HideKeyboard.hide();
      ProgressDialogUtils.showProgressDialog();
      User? alreadyLoginUser = await auth.currentUser;
      if (alreadyLoginUser != null) {
        await auth.signOut();
      }
      await auth.verifyPhoneNumber(
        phoneNumber: '${dialCode}${state.mobileNumber ?? ""}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          MessageDialogUtils.success("User Verified successfully");
          if (Platform.isAndroid) {
            try {
              await _repository.autoVerification(credential);
              ProgressDialogUtils.hideProgressDialog();
              NavigatorService.pushNamed(AppRoutes.createPasswordScreen);
            } catch (e) {
              MessageDialogUtils.showError(e.toString());
              ProgressDialogUtils.hideProgressDialog();
            }
          }
          //this is only for android not for IOS
        },
        verificationFailed: (FirebaseAuthException e) {
          ProgressDialogUtils.hideProgressDialog();
          MessageDialogUtils.showError(e.message ?? "");
        },
        codeSent: (String verificationId, int? resendToken) {
          ProgressDialogUtils.hideProgressDialog();

          NavigatorService.pushNamed(AppRoutes.otpScreen,
              arguments: {"verificationId": verificationId});
        },
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {},
      );

      Logger.log("its triggered");
    } catch (e) {
      ProgressDialogUtils.hideProgressDialog();
      MessageDialogUtils.showError(e.toString());
    }
  }

  _signUpGoogle(
    SignUpGoogleEvent event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      HideKeyboard.hide();
      ProgressDialogUtils.showProgressDialog();
      await _repository.signUpGoogle();
      ProgressDialogUtils.hideProgressDialog();
      NavigatorService.pushNamed(AppRoutes.createAccountScreen);
      Logger.log("its triggered");
    } catch (e) {
      ProgressDialogUtils.hideProgressDialog();
      MessageDialogUtils.showError(e.toString());
    }
  }

  _signUpApple(
    SignUpAppleEvent event,
    Emitter<SignUpState> emit,
  ) async {
    try {
      HideKeyboard.hide();
      ProgressDialogUtils.showProgressDialog();
      await _repository.signUpApple();
      ProgressDialogUtils.hideProgressDialog();
      NavigatorService.pushNamed(AppRoutes.createAccountScreen);
    } catch (e) {
      ProgressDialogUtils.hideProgressDialog();
      MessageDialogUtils.showError(e.toString());
    }
  }
}
