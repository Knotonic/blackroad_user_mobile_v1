import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/alert_box_screen/models/alert_box_model.dart';
part 'alert_box_event.dart';
part 'alert_box_state.dart';

/// A bloc that manages the state of a AlertBox according to the event that is dispatched to it.
class AlertBoxBloc extends Bloc<AlertBoxEvent, AlertBoxState> {
  AlertBoxBloc(AlertBoxState initialState) : super(initialState) {
    on<AlertBoxInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AlertBoxState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<AlertBoxState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox1: event.value,
    ));
  }

  _onInitialize(
    AlertBoxInitialEvent event,
    Emitter<AlertBoxState> emit,
  ) async {
    emit(state.copyWith(
      registrationcopController: TextEditingController(),
      isCheckbox: false,
      isCheckbox1: false,
    ));
  }
}
