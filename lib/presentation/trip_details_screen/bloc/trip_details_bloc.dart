import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/trip_details_screen/models/trip_details_model.dart';
part 'trip_details_event.dart';
part 'trip_details_state.dart';

/// A bloc that manages the state of a TripDetails according to the event that is dispatched to it.
class TripDetailsBloc extends Bloc<TripDetailsEvent, TripDetailsState> {
  TripDetailsBloc(TripDetailsState initialState) : super(initialState) {
    on<TripDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TripDetailsInitialEvent event,
    Emitter<TripDetailsState> emit,
  ) async {}
}
