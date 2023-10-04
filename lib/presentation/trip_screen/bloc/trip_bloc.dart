import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/trip_screen/models/trip_model.dart';
part 'trip_event.dart';
part 'trip_state.dart';

/// A bloc that manages the state of a Trip according to the event that is dispatched to it.
class TripBloc extends Bloc<TripEvent, TripState> {
  TripBloc(TripState initialState) : super(initialState) {
    on<TripInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TripInitialEvent event,
    Emitter<TripState> emit,
  ) async {}
}
