// ignore_for_file: must_be_immutable

part of 'map_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MapTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MapTwoEvent extends Equatable {}

/// Event that is dispatched when the MapTwo widget is first created.
class MapTwoInitialEvent extends MapTwoEvent {
  @override
  List<Object?> get props => [];
}
