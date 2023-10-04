// ignore_for_file: must_be_immutable

part of 'frame_489_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame489 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame489Event extends Equatable {}

/// Event that is dispatched when the Frame489 widget is first created.
class Frame489InitialEvent extends Frame489Event {
  @override
  List<Object?> get props => [];
}
