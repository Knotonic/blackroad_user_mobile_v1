// ignore_for_file: must_be_immutable

part of 'check_list_detatil_bloc.dart';

/// Represents the state of CheckListDetatil in the application.
class CheckListDetatilState extends Equatable {
  CheckListDetatilState({
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.isCheckbox2 = false,
    this.isCheckbox3 = false,
    this.isCheckbox4 = false,
    this.isCheckbox5 = false,
    this.isCheckbox6 = false,
    this.isCheckbox7 = false,
    this.isCheckbox8 = false,
    this.isCheckbox9 = false,
    this.checkListDetatilModelObj,
  });

  CheckListDetatilModel? checkListDetatilModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  bool isCheckbox2;

  bool isCheckbox3;

  bool isCheckbox4;

  bool isCheckbox5;

  bool isCheckbox6;

  bool isCheckbox7;

  bool isCheckbox8;

  bool isCheckbox9;

  @override
  List<Object?> get props => [
        isCheckbox,
        isCheckbox1,
        isCheckbox2,
        isCheckbox3,
        isCheckbox4,
        isCheckbox5,
        isCheckbox6,
        isCheckbox7,
        isCheckbox8,
        isCheckbox9,
        checkListDetatilModelObj,
      ];
  CheckListDetatilState copyWith({
    bool? isCheckbox,
    bool? isCheckbox1,
    bool? isCheckbox2,
    bool? isCheckbox3,
    bool? isCheckbox4,
    bool? isCheckbox5,
    bool? isCheckbox6,
    bool? isCheckbox7,
    bool? isCheckbox8,
    bool? isCheckbox9,
    CheckListDetatilModel? checkListDetatilModelObj,
  }) {
    return CheckListDetatilState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      isCheckbox2: isCheckbox2 ?? this.isCheckbox2,
      isCheckbox3: isCheckbox3 ?? this.isCheckbox3,
      isCheckbox4: isCheckbox4 ?? this.isCheckbox4,
      isCheckbox5: isCheckbox5 ?? this.isCheckbox5,
      isCheckbox6: isCheckbox6 ?? this.isCheckbox6,
      isCheckbox7: isCheckbox7 ?? this.isCheckbox7,
      isCheckbox8: isCheckbox8 ?? this.isCheckbox8,
      isCheckbox9: isCheckbox9 ?? this.isCheckbox9,
      checkListDetatilModelObj:
          checkListDetatilModelObj ?? this.checkListDetatilModelObj,
    );
  }
}
