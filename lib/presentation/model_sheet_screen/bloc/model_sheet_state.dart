// ignore_for_file: must_be_immutable

part of 'model_sheet_bloc.dart';

/// Represents the state of ModelSheet in the application.
class ModelSheetState extends Equatable {
  ModelSheetState({
    this.markasunreadController,
    this.copytextController,
    this.replyController,
    this.edittextController,
    this.deleteController,
    this.modelSheetModelObj,
  });

  TextEditingController? markasunreadController;

  TextEditingController? copytextController;

  TextEditingController? replyController;

  TextEditingController? edittextController;

  TextEditingController? deleteController;

  ModelSheetModel? modelSheetModelObj;

  @override
  List<Object?> get props => [
        markasunreadController,
        copytextController,
        replyController,
        edittextController,
        deleteController,
        modelSheetModelObj,
      ];
  ModelSheetState copyWith({
    TextEditingController? markasunreadController,
    TextEditingController? copytextController,
    TextEditingController? replyController,
    TextEditingController? edittextController,
    TextEditingController? deleteController,
    ModelSheetModel? modelSheetModelObj,
  }) {
    return ModelSheetState(
      markasunreadController:
          markasunreadController ?? this.markasunreadController,
      copytextController: copytextController ?? this.copytextController,
      replyController: replyController ?? this.replyController,
      edittextController: edittextController ?? this.edittextController,
      deleteController: deleteController ?? this.deleteController,
      modelSheetModelObj: modelSheetModelObj ?? this.modelSheetModelObj,
    );
  }
}
