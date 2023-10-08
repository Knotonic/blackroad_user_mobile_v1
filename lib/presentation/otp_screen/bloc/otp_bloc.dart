import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/hide_keyboard.dart';
import '../../../core/utils/message_dialogue_utils.dart';
import '../../../core/utils/progress_dialog_utils.dart';
import '../../../data/network/auth/sign_up_network.dart';
import '../models/otp_model.dart';
import '/core/app_export.dart';

import 'package:sms_autofill/sms_autofill.dart';
part 'otp_event.dart';
part 'otp_state.dart';

/// A bloc that manages the state of a Otp according to the event that is dispatched to it.
class OtpBloc extends Bloc<OtpEvent, OtpState> with CodeAutoFill {
  SignUpNetwork _repository;
  OtpBloc(OtpState initialState, this._repository) : super(initialState) {
    on<OtpInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<SubmitOTPEvent>(_submitOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OtpState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _submitOTP(
    SubmitOTPEvent event,
    Emitter<OtpState> emit,
  ) async {
    try {
      final isValid = formKey.currentState?.validate();
      if (!isValid!) {
        return;
      }

      formKey.currentState?.save();
      HideKeyboard.hide();
      ProgressDialogUtils.showProgressDialog();

      await _repository.verifyMobileOtp(
          event.verificationId, state.otpController!.text);
      Logger.log("its triggered");
      ProgressDialogUtils.hideProgressDialog();
      // MessageDialogUtils.showError("msg_otp_delivered".tr);
      NavigatorService.pushNamed(
        AppRoutes.createPasswordScreen,
      );
    } catch (e) {
      ProgressDialogUtils.hideProgressDialog();
      MessageDialogUtils.showError(e.toString());
    }
  }

  _onInitialize(
    OtpInitialEvent event,
    Emitter<OtpState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
