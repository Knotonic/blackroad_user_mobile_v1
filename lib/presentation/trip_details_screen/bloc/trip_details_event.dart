// ignore_for_file: must_be_immutable

part of 'trip_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TripDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TripDetailsEvent extends Equatable {}

/// Event that is dispatched when the TripDetails widget is first created.
class TripDetailsInitialEvent extends TripDetailsEvent {
  @override
  List<Object?> get props => [];
}
