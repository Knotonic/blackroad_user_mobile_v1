// ignore_for_file: must_be_immutable

part of 'check_list_bloc.dart';

/// Represents the state of CheckList in the application.
class CheckListState extends Equatable {
  CheckListState({this.checkListModelObj});

  CheckListModel? checkListModelObj;

  @override
  List<Object?> get props => [
        checkListModelObj,
      ];
  CheckListState copyWith({CheckListModel? checkListModelObj}) {
    return CheckListState(
      checkListModelObj: checkListModelObj ?? this.checkListModelObj,
    );
  }
}
