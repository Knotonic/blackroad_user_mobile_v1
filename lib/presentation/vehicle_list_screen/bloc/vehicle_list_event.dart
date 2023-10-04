// ignore_for_file: must_be_immutable

part of 'vehicle_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VehicleList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VehicleListEvent extends Equatable {}

/// Event that is dispatched when the VehicleList widget is first created.
class VehicleListInitialEvent extends VehicleListEvent {
  @override
  List<Object?> get props => [];
}
