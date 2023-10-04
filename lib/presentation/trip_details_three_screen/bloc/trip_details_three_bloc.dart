import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/trip_details_three_screen/models/trip_details_three_model.dart';
part 'trip_details_three_event.dart';
part 'trip_details_three_state.dart';

/// A bloc that manages the state of a TripDetailsThree according to the event that is dispatched to it.
class TripDetailsThreeBloc
    extends Bloc<TripDetailsThreeEvent, TripDetailsThreeState> {
  TripDetailsThreeBloc(TripDetailsThreeState initialState)
      : super(initialState) {
    on<TripDetailsThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TripDetailsThreeInitialEvent event,
    Emitter<TripDetailsThreeState> emit,
  ) async {}
}
