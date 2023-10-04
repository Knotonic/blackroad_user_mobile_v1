import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/map_two_item_model.dart';
import 'package:blackroad_v1/presentation/map_two_screen/models/map_two_model.dart';
part 'map_two_event.dart';
part 'map_two_state.dart';

/// A bloc that manages the state of a MapTwo according to the event that is dispatched to it.
class MapTwoBloc extends Bloc<MapTwoEvent, MapTwoState> {
  MapTwoBloc(MapTwoState initialState) : super(initialState) {
    on<MapTwoInitialEvent>(_onInitialize);
  }

  List<MapTwoItemModel> fillMapTwoItemList() {
    return List.generate(3, (index) => MapTwoItemModel());
  }

  _onInitialize(
    MapTwoInitialEvent event,
    Emitter<MapTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        mapTwoModelObj: state.mapTwoModelObj?.copyWith(
      mapTwoItemList: fillMapTwoItemList(),
    )));
  }
}
