// ignore_for_file: must_be_immutable

part of 'trip_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TripOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TripOneEvent extends Equatable {}

/// Event that is dispatched when the TripOne widget is first created.
class TripOneInitialEvent extends TripOneEvent {
  @override
  List<Object?> get props => [];
}
