import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/model_sheet_one_screen/models/model_sheet_one_model.dart';
part 'model_sheet_one_event.dart';
part 'model_sheet_one_state.dart';

/// A bloc that manages the state of a ModelSheetOne according to the event that is dispatched to it.
class ModelSheetOneBloc extends Bloc<ModelSheetOneEvent, ModelSheetOneState> {
  ModelSheetOneBloc(ModelSheetOneState initialState) : super(initialState) {
    on<ModelSheetOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ModelSheetOneInitialEvent event,
    Emitter<ModelSheetOneState> emit,
  ) async {
    emit(state.copyWith(
      selectController: TextEditingController(),
      rectangle230Controller: TextEditingController(),
    ));
  }
}
