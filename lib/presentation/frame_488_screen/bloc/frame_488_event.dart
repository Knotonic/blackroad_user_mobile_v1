// ignore_for_file: must_be_immutable

part of 'frame_488_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame488 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame488Event extends Equatable {}

/// Event that is dispatched when the Frame488 widget is first created.
class Frame488InitialEvent extends Frame488Event {
  @override
  List<Object?> get props => [];
}
