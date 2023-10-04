import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/map1_screen/models/map1_model.dart';
part 'map1_event.dart';
part 'map1_state.dart';

/// A bloc that manages the state of a Map1 according to the event that is dispatched to it.
class Map1Bloc extends Bloc<Map1Event, Map1State> {
  Map1Bloc(Map1State initialState) : super(initialState) {
    on<Map1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Map1InitialEvent event,
    Emitter<Map1State> emit,
  ) async {}
}
