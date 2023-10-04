import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/check_list_item_model.dart';
import 'package:blackroad_v1/presentation/check_list_screen/models/check_list_model.dart';
part 'check_list_event.dart';
part 'check_list_state.dart';

/// A bloc that manages the state of a CheckList according to the event that is dispatched to it.
class CheckListBloc extends Bloc<CheckListEvent, CheckListState> {
  CheckListBloc(CheckListState initialState) : super(initialState) {
    on<CheckListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckListInitialEvent event,
    Emitter<CheckListState> emit,
  ) async {
    emit(state.copyWith(
        checkListModelObj: state.checkListModelObj
            ?.copyWith(checkListItemList: fillCheckListItemList())));
  }

  List<CheckListItemModel> fillCheckListItemList() {
    return List.generate(6, (index) => CheckListItemModel());
  }
}
