// ignore_for_file: must_be_immutable

part of 'trip_details_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TripDetailsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TripDetailsThreeEvent extends Equatable {}

/// Event that is dispatched when the TripDetailsThree widget is first created.
class TripDetailsThreeInitialEvent extends TripDetailsThreeEvent {
  @override
  List<Object?> get props => [];
}
