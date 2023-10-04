import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/member_two_screen/models/member_two_model.dart';
part 'member_two_event.dart';
part 'member_two_state.dart';

/// A bloc that manages the state of a MemberTwo according to the event that is dispatched to it.
class MemberTwoBloc extends Bloc<MemberTwoEvent, MemberTwoState> {
  MemberTwoBloc(MemberTwoState initialState) : super(initialState) {
    on<MemberTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MemberTwoInitialEvent event,
    Emitter<MemberTwoState> emit,
  ) async {}
}
