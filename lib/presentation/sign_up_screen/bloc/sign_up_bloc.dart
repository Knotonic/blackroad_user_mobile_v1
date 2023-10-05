import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
  }

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

  TextEditingController mobileNumberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
      ProgressDialogUtils.showProgressDialog();

      await Future.delayed(Duration(seconds: 8));
      // await _repository.sendMobileOtp(state.mobileNumber ?? '');
      ProgressDialogUtils.hideProgressDialog();
      MessageDialogUtils.showError("First Step is Fine Compare to nothing");
    } catch (e) {}
  }
}
