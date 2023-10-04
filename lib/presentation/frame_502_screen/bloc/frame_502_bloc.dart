import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/frame_502_screen/models/frame_502_model.dart';
part 'frame_502_event.dart';
part 'frame_502_state.dart';

/// A bloc that manages the state of a Frame502 according to the event that is dispatched to it.
class Frame502Bloc extends Bloc<Frame502Event, Frame502State> {
  Frame502Bloc(Frame502State initialState) : super(initialState) {
    on<Frame502InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame502InitialEvent event,
    Emitter<Frame502State> emit,
  ) async {}
}
