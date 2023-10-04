import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/frame_488_screen/models/frame_488_model.dart';
part 'frame_488_event.dart';
part 'frame_488_state.dart';

/// A bloc that manages the state of a Frame488 according to the event that is dispatched to it.
class Frame488Bloc extends Bloc<Frame488Event, Frame488State> {
  Frame488Bloc(Frame488State initialState) : super(initialState) {
    on<Frame488InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame488InitialEvent event,
    Emitter<Frame488State> emit,
  ) async {}
}
