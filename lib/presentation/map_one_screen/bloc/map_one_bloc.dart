import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/map_one_screen/models/map_one_model.dart';
part 'map_one_event.dart';
part 'map_one_state.dart';

/// A bloc that manages the state of a MapOne according to the event that is dispatched to it.
class MapOneBloc extends Bloc<MapOneEvent, MapOneState> {
  MapOneBloc(MapOneState initialState) : super(initialState) {
    on<MapOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MapOneInitialEvent event,
    Emitter<MapOneState> emit,
  ) async {}
}
