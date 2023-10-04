// ignore_for_file: must_be_immutable

part of 'add_checklist_bloc.dart';

/// Represents the state of AddChecklist in the application.
class AddChecklistState extends Equatable {
  AddChecklistState({
    this.groupfiftysevenController,
    this.textfiledwithouController,
    this.textfiledwithouController1,
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.addChecklistModelObj,
  });

  TextEditingController? groupfiftysevenController;

  TextEditingController? textfiledwithouController;

  TextEditingController? textfiledwithouController1;

  AddChecklistModel? addChecklistModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  @override
  List<Object?> get props => [
        groupfiftysevenController,
        textfiledwithouController,
        textfiledwithouController1,
        isCheckbox,
        isCheckbox1,
        addChecklistModelObj,
      ];
  AddChecklistState copyWith({
    TextEditingController? groupfiftysevenController,
    TextEditingController? textfiledwithouController,
    TextEditingController? textfiledwithouController1,
    bool? isCheckbox,
    bool? isCheckbox1,
    AddChecklistModel? addChecklistModelObj,
  }) {
    return AddChecklistState(
      groupfiftysevenController:
          groupfiftysevenController ?? this.groupfiftysevenController,
      textfiledwithouController:
          textfiledwithouController ?? this.textfiledwithouController,
      textfiledwithouController1:
          textfiledwithouController1 ?? this.textfiledwithouController1,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      addChecklistModelObj: addChecklistModelObj ?? this.addChecklistModelObj,
    );
  }
}
