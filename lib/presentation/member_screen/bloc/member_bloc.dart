import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/member_screen/models/member_model.dart';
part 'member_event.dart';
part 'member_state.dart';

/// A bloc that manages the state of a Member according to the event that is dispatched to it.
class MemberBloc extends Bloc<MemberEvent, MemberState> {
  MemberBloc(MemberState initialState) : super(initialState) {
    on<MemberInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MemberInitialEvent event,
    Emitter<MemberState> emit,
  ) async {
    emit(state.copyWith(messageController: TextEditingController()));
  }
}
