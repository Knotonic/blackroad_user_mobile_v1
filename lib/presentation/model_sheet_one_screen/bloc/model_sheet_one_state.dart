// ignore_for_file: must_be_immutable

part of 'model_sheet_one_bloc.dart';

/// Represents the state of ModelSheetOne in the application.
class ModelSheetOneState extends Equatable {
  ModelSheetOneState({
    this.selectController,
    this.rectangle230Controller,
    this.modelSheetOneModelObj,
  });

  TextEditingController? selectController;

  TextEditingController? rectangle230Controller;

  ModelSheetOneModel? modelSheetOneModelObj;

  @override
  List<Object?> get props => [
        selectController,
        rectangle230Controller,
        modelSheetOneModelObj,
      ];
  ModelSheetOneState copyWith({
    TextEditingController? selectController,
    TextEditingController? rectangle230Controller,
    ModelSheetOneModel? modelSheetOneModelObj,
  }) {
    return ModelSheetOneState(
      selectController: selectController ?? this.selectController,
      rectangle230Controller:
          rectangle230Controller ?? this.rectangle230Controller,
      modelSheetOneModelObj:
          modelSheetOneModelObj ?? this.modelSheetOneModelObj,
    );
  }
}
