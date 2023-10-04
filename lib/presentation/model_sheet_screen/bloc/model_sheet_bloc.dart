import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/model_sheet_screen/models/model_sheet_model.dart';
part 'model_sheet_event.dart';
part 'model_sheet_state.dart';

/// A bloc that manages the state of a ModelSheet according to the event that is dispatched to it.
class ModelSheetBloc extends Bloc<ModelSheetEvent, ModelSheetState> {
  ModelSheetBloc(ModelSheetState initialState) : super(initialState) {
    on<ModelSheetInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ModelSheetInitialEvent event,
    Emitter<ModelSheetState> emit,
  ) async {
    emit(state.copyWith(
      markasunreadController: TextEditingController(),
      copytextController: TextEditingController(),
      replyController: TextEditingController(),
      edittextController: TextEditingController(),
      deleteController: TextEditingController(),
    ));
  }
}
