// ignore_for_file: must_be_immutable

part of 'add_checklist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddChecklist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddChecklistEvent extends Equatable {}

/// Event that is dispatched when the AddChecklist widget is first created.
class AddChecklistInitialEvent extends AddChecklistEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddChecklistEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends AddChecklistEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
