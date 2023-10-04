import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/profile_page_three_bottomsheet/models/profile_page_three_model.dart';
part 'profile_page_three_event.dart';
part 'profile_page_three_state.dart';

/// A bloc that manages the state of a ProfilePageThree according to the event that is dispatched to it.
class ProfilePageThreeBloc
    extends Bloc<ProfilePageThreeEvent, ProfilePageThreeState> {
  ProfilePageThreeBloc(ProfilePageThreeState initialState)
      : super(initialState) {
    on<ProfilePageThreeInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<ProfilePageThreeState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<ProfilePageThreeState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _onInitialize(
    ProfilePageThreeInitialEvent event,
    Emitter<ProfilePageThreeState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
    ));
  }
}
