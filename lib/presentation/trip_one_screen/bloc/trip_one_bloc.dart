import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/trip_one_screen/models/trip_one_model.dart';
part 'trip_one_event.dart';
part 'trip_one_state.dart';

/// A bloc that manages the state of a TripOne according to the event that is dispatched to it.
class TripOneBloc extends Bloc<TripOneEvent, TripOneState> {
  TripOneBloc(TripOneState initialState) : super(initialState) {
    on<TripOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TripOneInitialEvent event,
    Emitter<TripOneState> emit,
  ) async {}
}
