// ignore_for_file: must_be_immutable

part of 'map1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Map1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Map1Event extends Equatable {}

/// Event that is dispatched when the Map1 widget is first created.
class Map1InitialEvent extends Map1Event {
  @override
  List<Object?> get props => [];
}
