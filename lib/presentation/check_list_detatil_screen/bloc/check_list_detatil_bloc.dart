import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/check_list_detatil_screen/models/check_list_detatil_model.dart';
part 'check_list_detatil_event.dart';
part 'check_list_detatil_state.dart';

/// A bloc that manages the state of a CheckListDetatil according to the event that is dispatched to it.
class CheckListDetatilBloc
    extends Bloc<CheckListDetatilEvent, CheckListDetatilState> {
  CheckListDetatilBloc(CheckListDetatilState initialState)
      : super(initialState) {
    on<CheckListDetatilInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
    on<ChangeCheckBox6Event>(_changeCheckBox6);
    on<ChangeCheckBox7Event>(_changeCheckBox7);
    on<ChangeCheckBox8Event>(_changeCheckBox8);
    on<ChangeCheckBox9Event>(_changeCheckBox9);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox1: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox2: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox3: event.value));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox4: event.value));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox5: event.value));
  }

  _changeCheckBox6(
    ChangeCheckBox6Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox6: event.value));
  }

  _changeCheckBox7(
    ChangeCheckBox7Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox7: event.value));
  }

  _changeCheckBox8(
    ChangeCheckBox8Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox8: event.value));
  }

  _changeCheckBox9(
    ChangeCheckBox9Event event,
    Emitter<CheckListDetatilState> emit,
  ) {
    emit(state.copyWith(isCheckbox9: event.value));
  }

  _onInitialize(
    CheckListDetatilInitialEvent event,
    Emitter<CheckListDetatilState> emit,
  ) async {
    emit(state.copyWith(
        isCheckbox: false,
        isCheckbox1: false,
        isCheckbox2: false,
        isCheckbox3: false,
        isCheckbox4: false,
        isCheckbox5: false,
        isCheckbox6: false,
        isCheckbox7: false,
        isCheckbox8: false,
        isCheckbox9: false));
  }
}
