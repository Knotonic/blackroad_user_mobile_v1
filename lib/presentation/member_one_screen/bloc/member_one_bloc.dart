import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/member_one_screen/models/member_one_model.dart';
part 'member_one_event.dart';
part 'member_one_state.dart';

/// A bloc that manages the state of a MemberOne according to the event that is dispatched to it.
class MemberOneBloc extends Bloc<MemberOneEvent, MemberOneState> {
  MemberOneBloc(MemberOneState initialState) : super(initialState) {
    on<MemberOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MemberOneInitialEvent event,
    Emitter<MemberOneState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
