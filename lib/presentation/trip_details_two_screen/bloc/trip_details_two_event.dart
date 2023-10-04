// ignore_for_file: must_be_immutable

part of 'trip_details_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TripDetailsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TripDetailsTwoEvent extends Equatable {}

/// Event that is dispatched when the TripDetailsTwo widget is first created.
class TripDetailsTwoInitialEvent extends TripDetailsTwoEvent {
  @override
  List<Object?> get props => [];
}
