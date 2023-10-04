import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/route_one_item_model.dart';
import 'package:blackroad_v1/presentation/route_one_screen/models/route_one_model.dart';
part 'route_one_event.dart';
part 'route_one_state.dart';

/// A bloc that manages the state of a RouteOne according to the event that is dispatched to it.
class RouteOneBloc extends Bloc<RouteOneEvent, RouteOneState> {
  RouteOneBloc(RouteOneState initialState) : super(initialState) {
    on<RouteOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RouteOneInitialEvent event,
    Emitter<RouteOneState> emit,
  ) async {
    emit(state.copyWith(
        routeOneModelObj: state.routeOneModelObj
            ?.copyWith(routeOneItemList: fillRouteOneItemList())));
  }

  List<RouteOneItemModel> fillRouteOneItemList() {
    return List.generate(24, (index) => RouteOneItemModel());
  }
}
