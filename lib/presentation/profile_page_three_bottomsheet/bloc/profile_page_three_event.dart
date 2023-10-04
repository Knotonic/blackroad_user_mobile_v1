// ignore_for_file: must_be_immutable

part of 'profile_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfilePageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilePageThreeEvent extends Equatable {}

/// Event that is dispatched when the ProfilePageThree widget is first created.
class ProfilePageThreeInitialEvent extends ProfilePageThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends ProfilePageThreeEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends ProfilePageThreeEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
