// ignore_for_file: must_be_immutable

part of 'route_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Route widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RouteEvent extends Equatable {}

/// Event that is dispatched when the Route widget is first created.
class RouteInitialEvent extends RouteEvent {
  @override
  List<Object?> get props => [];
}
