import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<ChangeUserNameEvent>(_changeUserName);
    on<ChangeGenderEvent>(_changeGender);
    on<ChangeDOBEvent>(_changeDOB);
    on<ChangeMobileNumberEvent>(_changeMobileNumber);
  }

  _changeUserName(
    ChangeUserNameEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      username: event.data,
    ));
  }

  _changeGender(
    ChangeGenderEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(gender: event.data));
  }

  _changeDOB(
    ChangeDOBEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(dob: event.data));
  }

  _changeMobileNumber(
    ChangeMobileNumberEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(mobileNumber: event.data));
  }

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
      username: '',
      gender: '',
      dob: null,
      mobileNumber: '',
    ));
  }

  TextEditingController userName = TextEditingController();
  List<String> gender = ['MALE', 'FEMALE', 'OTHERS'];
  TextEditingController dob = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode userNameNode = FocusNode();
  final FocusNode genderNode = FocusNode();
  final FocusNode dobNode = FocusNode();
  final FocusNode mobileNumberNode = FocusNode();
}
