// ignore_for_file: must_be_immutable

part of 'frame_502_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame502 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame502Event extends Equatable {}

/// Event that is dispatched when the Frame502 widget is first created.
class Frame502InitialEvent extends Frame502Event {
  @override
  List<Object?> get props => [];
}
