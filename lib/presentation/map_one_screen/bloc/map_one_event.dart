// ignore_for_file: must_be_immutable

part of 'map_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MapOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MapOneEvent extends Equatable {}

/// Event that is dispatched when the MapOne widget is first created.
class MapOneInitialEvent extends MapOneEvent {
  @override
  List<Object?> get props => [];
}
