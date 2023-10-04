import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/sign_up_three_screen/models/sign_up_three_model.dart';
part 'sign_up_three_event.dart';
part 'sign_up_three_state.dart';

/// A bloc that manages the state of a SignUpThree according to the event that is dispatched to it.
class SignUpThreeBloc extends Bloc<SignUpThreeEvent, SignUpThreeState> {
  SignUpThreeBloc(SignUpThreeState initialState) : super(initialState) {
    on<SignUpThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpThreeInitialEvent event,
    Emitter<SignUpThreeState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
    ));
  }
}
