// ignore_for_file: must_be_immutable

part of 'frame_481_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame481 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame481Event extends Equatable {}

/// Event that is dispatched when the Frame481 widget is first created.
class Frame481InitialEvent extends Frame481Event {
  @override
  List<Object?> get props => [];
}
