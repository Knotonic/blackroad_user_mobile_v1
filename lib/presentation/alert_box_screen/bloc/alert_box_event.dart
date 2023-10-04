// ignore_for_file: must_be_immutable

part of 'alert_box_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AlertBox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AlertBoxEvent extends Equatable {}

/// Event that is dispatched when the AlertBox widget is first created.
class AlertBoxInitialEvent extends AlertBoxEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AlertBoxEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends AlertBoxEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
