// ignore_for_file: must_be_immutable

part of 'create_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateAccountEvent extends Equatable {}

/// Event that is dispatched when the CreateAccount widget is first created.
class CreateAccountInitialEvent extends CreateAccountEvent {
  @override
  List<Object?> get props => [];
}

class ChangeUserNameEvent extends CreateAccountEvent {
  String data;
  ChangeUserNameEvent(this.data);
  @override
  List<Object?> get props => [];
}

class ChangeGenderEvent extends CreateAccountEvent {
  String data;
  ChangeGenderEvent(this.data);
  @override
  List<Object?> get props => [];
}

class ChangeDOBEvent extends CreateAccountEvent {
  DateTime data;
  ChangeDOBEvent(this.data);
  @override
  List<Object?> get props => [];
}

class ChangeMobileNumberEvent extends CreateAccountEvent {
  String data;
  ChangeMobileNumberEvent(this.data);
  @override
  List<Object?> get props => [];
}
