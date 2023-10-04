// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpEvent extends Equatable {}

/// Event that is dispatched when the SignUp widget is first created.
class SignUpInitialEvent extends SignUpEvent {
  @override
  List<Object?> get props => [];
}

class ChangeUserNameEvent extends SignUpEvent {
  String data;
  ChangeUserNameEvent(this.data);
  @override
  List<Object?> get props => [];
}

class ChangeGenderEvent extends SignUpEvent {
  String data;
  ChangeGenderEvent(this.data);
  @override
  List<Object?> get props => [];
}

class ChangeDOBEvent extends SignUpEvent {
  DateTime data;
  ChangeDOBEvent(this.data);
  @override
  List<Object?> get props => [];
}

class ChangeMobileNumberEvent extends SignUpEvent {
  String data;
  ChangeMobileNumberEvent(this.data);
  @override
  List<Object?> get props => [];
}
