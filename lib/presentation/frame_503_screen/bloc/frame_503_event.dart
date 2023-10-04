// ignore_for_file: must_be_immutable

part of 'frame_503_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame503 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame503Event extends Equatable {}

/// Event that is dispatched when the Frame503 widget is first created.
class Frame503InitialEvent extends Frame503Event {
  @override
  List<Object?> get props => [];
}
