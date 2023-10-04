import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/add_vehicle_screen/models/add_vehicle_model.dart';
part 'add_vehicle_event.dart';
part 'add_vehicle_state.dart';

/// A bloc that manages the state of a AddVehicle according to the event that is dispatched to it.
class AddVehicleBloc extends Bloc<AddVehicleEvent, AddVehicleState> {
  AddVehicleBloc(AddVehicleState initialState) : super(initialState) {
    on<AddVehicleInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddVehicleState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _onInitialize(
    AddVehicleInitialEvent event,
    Emitter<AddVehicleState> emit,
  ) async {
    emit(state.copyWith(
        typeController: TextEditingController(),
        detailsController: TextEditingController(),
        isCheckbox: false));
  }
}
