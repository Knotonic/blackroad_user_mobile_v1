import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/create_password_model.dart';
import '/core/app_export.dart';
part 'create_password_event.dart';
part 'create_password_state.dart';

/// A bloc that manages the state of a CreatePassword according to the event that is dispatched to it.
class CreatePasswordBloc extends Bloc<CreatePasswordEvent, CreatePasswordState> {
  CreatePasswordBloc(CreatePasswordState initialState) : super(initialState) {
    on<CreatePasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreatePasswordInitialEvent event,
    Emitter<CreatePasswordState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
    ));
  }
}
