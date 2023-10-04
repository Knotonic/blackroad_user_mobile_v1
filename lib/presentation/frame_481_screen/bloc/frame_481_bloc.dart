import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/frame_481_screen/models/frame_481_model.dart';
part 'frame_481_event.dart';
part 'frame_481_state.dart';

/// A bloc that manages the state of a Frame481 according to the event that is dispatched to it.
class Frame481Bloc extends Bloc<Frame481Event, Frame481State> {
  Frame481Bloc(Frame481State initialState) : super(initialState) {
    on<Frame481InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame481InitialEvent event,
    Emitter<Frame481State> emit,
  ) async {}
}
