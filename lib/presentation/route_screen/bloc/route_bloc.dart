import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/route_screen/models/route_model.dart';
part 'route_event.dart';
part 'route_state.dart';

/// A bloc that manages the state of a Route according to the event that is dispatched to it.
class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc(RouteState initialState) : super(initialState) {
    on<RouteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RouteInitialEvent event,
    Emitter<RouteState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
