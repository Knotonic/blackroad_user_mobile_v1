// ignore_for_file: must_be_immutable

part of 'vehicle_list_bloc.dart';

/// Represents the state of VehicleList in the application.
class VehicleListState extends Equatable {
  VehicleListState({this.vehicleListModelObj});

  VehicleListModel? vehicleListModelObj;

  @override
  List<Object?> get props => [
        vehicleListModelObj,
      ];
  VehicleListState copyWith({VehicleListModel? vehicleListModelObj}) {
    return VehicleListState(
      vehicleListModelObj: vehicleListModelObj ?? this.vehicleListModelObj,
    );
  }
}
