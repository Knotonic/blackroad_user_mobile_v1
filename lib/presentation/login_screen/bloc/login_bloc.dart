import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../data/network/auth/sign_in_network.dart';
import '/core/app_export.dart';
part 'login_event.dart';
part 'login_state.dart';

/// A bloc that manages the state of a Login according to the event that is dispatched to it.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  SignInNetwork repository;
  LoginBloc(LoginState initialState, this.repository) : super(initialState) {
    on<LoginInitialEvent>(_onInitialize);
    on<LoginChangeMobile>(_changeMobileNumber);
    on<LoginChangePassword>(_changeMobilePassword);
  }

  _onInitialize(
    LoginInitialEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
        mobilenoController: TextEditingController(),
        passwordController: TextEditingController()));
  }

  _changeMobileNumber(LoginChangeMobile event, Emitter<LoginState> emit) async {
    emit(state.copyWith(mobileNumber: event.mobileNumber));
  }

  _changeMobilePassword(
      LoginChangePassword event, Emitter<LoginState> emit) async {
    emit(state.copyWith(password: event.password));
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode mobileNumberFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
}
