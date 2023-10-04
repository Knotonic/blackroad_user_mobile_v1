// ignore_for_file: must_be_immutable

part of 'route_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RouteOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RouteOneEvent extends Equatable {}

/// Event that is dispatched when the RouteOne widget is first created.
class RouteOneInitialEvent extends RouteOneEvent {
  @override
  List<Object?> get props => [];
}
