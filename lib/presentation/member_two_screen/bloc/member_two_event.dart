// ignore_for_file: must_be_immutable

part of 'member_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MemberTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MemberTwoEvent extends Equatable {}

/// Event that is dispatched when the MemberTwo widget is first created.
class MemberTwoInitialEvent extends MemberTwoEvent {
  @override
  List<Object?> get props => [];
}
