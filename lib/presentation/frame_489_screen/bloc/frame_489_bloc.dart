import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/frame_489_screen/models/frame_489_model.dart';
part 'frame_489_event.dart';
part 'frame_489_state.dart';

/// A bloc that manages the state of a Frame489 according to the event that is dispatched to it.
class Frame489Bloc extends Bloc<Frame489Event, Frame489State> {
  Frame489Bloc(Frame489State initialState) : super(initialState) {
    on<Frame489InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame489InitialEvent event,
    Emitter<Frame489State> emit,
  ) async {}
}
