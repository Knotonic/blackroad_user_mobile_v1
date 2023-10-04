// ignore_for_file: must_be_immutable

part of 'trip_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Trip widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TripEvent extends Equatable {}

/// Event that is dispatched when the Trip widget is first created.
class TripInitialEvent extends TripEvent {
  @override
  List<Object?> get props => [];
}
