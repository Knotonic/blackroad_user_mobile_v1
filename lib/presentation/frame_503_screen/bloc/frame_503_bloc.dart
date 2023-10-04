import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/frame_503_screen/models/frame_503_model.dart';
part 'frame_503_event.dart';
part 'frame_503_state.dart';

/// A bloc that manages the state of a Frame503 according to the event that is dispatched to it.
class Frame503Bloc extends Bloc<Frame503Event, Frame503State> {
  Frame503Bloc(Frame503State initialState) : super(initialState) {
    on<Frame503InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame503InitialEvent event,
    Emitter<Frame503State> emit,
  ) async {}
}
