import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
part 'create_account_event.dart';
part 'create_account_state.dart';

/// A bloc that manages the state of a CreateAccount according to the event that is dispatched to it.
class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc(CreateAccountState initialState) : super(initialState) {
    on<CreateAccountInitialEvent>(_onInitialize);
    on<ChangeUserNameEvent>(_changeUserName);
    on<ChangeGenderEvent>(_changeGender);
    on<ChangeDOBEvent>(_changeDOB);
    on<ChangeMobileNumberEvent>(_changeMobileNumber);
  }

  _changeUserName(
    ChangeUserNameEvent event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(
      username: event.data,
    ));
  }

  _changeGender(
    ChangeGenderEvent event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(gender: event.data));
  }

  _changeDOB(
    ChangeDOBEvent event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(dob: event.data));
  }

  _changeMobileNumber(
    ChangeMobileNumberEvent event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(mobileNumber: event.data));
  }

  _onInitialize(
    CreateAccountInitialEvent event,
    Emitter<CreateAccountState> emit,
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
