// ignore_for_file: must_be_immutable

part of 'member_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Member widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MemberEvent extends Equatable {}

/// Event that is dispatched when the Member widget is first created.
class MemberInitialEvent extends MemberEvent {
  @override
  List<Object?> get props => [];
}
