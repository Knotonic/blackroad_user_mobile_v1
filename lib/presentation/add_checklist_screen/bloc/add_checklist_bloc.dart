import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/add_checklist_item_model.dart';
import 'package:blackroad_v1/presentation/add_checklist_screen/models/add_checklist_model.dart';
part 'add_checklist_event.dart';
part 'add_checklist_state.dart';

/// A bloc that manages the state of a AddChecklist according to the event that is dispatched to it.
class AddChecklistBloc extends Bloc<AddChecklistEvent, AddChecklistState> {
  AddChecklistBloc(AddChecklistState initialState) : super(initialState) {
    on<AddChecklistInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddChecklistState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<AddChecklistState> emit,
  ) {
    emit(state.copyWith(isCheckbox1: event.value));
  }

  List<AddChecklistItemModel> fillAddChecklistItemList() {
    return List.generate(3, (index) => AddChecklistItemModel());
  }

  _onInitialize(
    AddChecklistInitialEvent event,
    Emitter<AddChecklistState> emit,
  ) async {
    emit(state.copyWith(
        groupfiftysevenController: TextEditingController(),
        textfiledwithouController: TextEditingController(),
        textfiledwithouController1: TextEditingController(),
        isCheckbox: false,
        isCheckbox1: false));
    emit(state.copyWith(
        addChecklistModelObj: state.addChecklistModelObj
            ?.copyWith(addChecklistItemList: fillAddChecklistItemList())));
  }
}
