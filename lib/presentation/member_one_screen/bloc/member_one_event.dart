// ignore_for_file: must_be_immutable

part of 'member_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MemberOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MemberOneEvent extends Equatable {}

/// Event that is dispatched when the MemberOne widget is first created.
class MemberOneInitialEvent extends MemberOneEvent {
  @override
  List<Object?> get props => [];
}
