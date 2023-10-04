// ignore_for_file: must_be_immutable

part of 'alert_box_bloc.dart';

/// Represents the state of AlertBox in the application.
class AlertBoxState extends Equatable {
  AlertBoxState({
    this.registrationcopController,
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.alertBoxModelObj,
  });

  TextEditingController? registrationcopController;

  AlertBoxModel? alertBoxModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  @override
  List<Object?> get props => [
        registrationcopController,
        isCheckbox,
        isCheckbox1,
        alertBoxModelObj,
      ];
  AlertBoxState copyWith({
    TextEditingController? registrationcopController,
    bool? isCheckbox,
    bool? isCheckbox1,
    AlertBoxModel? alertBoxModelObj,
  }) {
    return AlertBoxState(
      registrationcopController:
          registrationcopController ?? this.registrationcopController,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      alertBoxModelObj: alertBoxModelObj ?? this.alertBoxModelObj,
    );
  }
}
