// ignore_for_file: must_be_immutable

part of 'create_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreatePassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreatePasswordEvent extends Equatable {}

/// Event that is dispatched when the CreatePassword widget is first created.
class CreatePasswordInitialEvent extends CreatePasswordEvent {
  @override
  List<Object?> get props => [];
}
