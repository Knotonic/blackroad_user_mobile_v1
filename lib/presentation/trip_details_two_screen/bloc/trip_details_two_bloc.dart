import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/trip_details_two_screen/models/trip_details_two_model.dart';
part 'trip_details_two_event.dart';
part 'trip_details_two_state.dart';

/// A bloc that manages the state of a TripDetailsTwo according to the event that is dispatched to it.
class TripDetailsTwoBloc
    extends Bloc<TripDetailsTwoEvent, TripDetailsTwoState> {
  TripDetailsTwoBloc(TripDetailsTwoState initialState) : super(initialState) {
    on<TripDetailsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TripDetailsTwoInitialEvent event,
    Emitter<TripDetailsTwoState> emit,
  ) async {}
}
