import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/vehicle_list_screen/models/vehicle_list_model.dart';
part 'vehicle_list_event.dart';
part 'vehicle_list_state.dart';

/// A bloc that manages the state of a VehicleList according to the event that is dispatched to it.
class VehicleListBloc extends Bloc<VehicleListEvent, VehicleListState> {
  VehicleListBloc(VehicleListState initialState) : super(initialState) {
    on<VehicleListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VehicleListInitialEvent event,
    Emitter<VehicleListState> emit,
  ) async {}
}
