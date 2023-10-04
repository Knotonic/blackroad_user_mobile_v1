// ignore_for_file: must_be_immutable

part of 'check_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckListEvent extends Equatable {}

/// Event that is dispatched when the CheckList widget is first created.
class CheckListInitialEvent extends CheckListEvent {
  @override
  List<Object?> get props => [];
}
