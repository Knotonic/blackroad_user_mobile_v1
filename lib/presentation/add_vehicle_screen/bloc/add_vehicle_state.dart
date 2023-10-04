// ignore_for_file: must_be_immutable

part of 'add_vehicle_bloc.dart';

/// Represents the state of AddVehicle in the application.
class AddVehicleState extends Equatable {
  AddVehicleState({
    this.typeController,
    this.detailsController,
    this.isCheckbox = false,
    this.addVehicleModelObj,
  });

  TextEditingController? typeController;

  TextEditingController? detailsController;

  AddVehicleModel? addVehicleModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        typeController,
        detailsController,
        isCheckbox,
        addVehicleModelObj,
      ];
  AddVehicleState copyWith({
    TextEditingController? typeController,
    TextEditingController? detailsController,
    bool? isCheckbox,
    AddVehicleModel? addVehicleModelObj,
  }) {
    return AddVehicleState(
      typeController: typeController ?? this.typeController,
      detailsController: detailsController ?? this.detailsController,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      addVehicleModelObj: addVehicleModelObj ?? this.addVehicleModelObj,
    );
  }
}
