import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/trip_details_one_screen/models/trip_details_one_model.dart';
part 'trip_details_one_event.dart';
part 'trip_details_one_state.dart';

/// A bloc that manages the state of a TripDetailsOne according to the event that is dispatched to it.
class TripDetailsOneBloc
    extends Bloc<TripDetailsOneEvent, TripDetailsOneState> {
  TripDetailsOneBloc(TripDetailsOneState initialState) : super(initialState) {
    on<TripDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TripDetailsOneInitialEvent event,
    Emitter<TripDetailsOneState> emit,
  ) async {}
}
