// ignore_for_file: must_be_immutable

part of 'trip_bloc.dart';

/// Represents the state of Trip in the application.
class TripState extends Equatable {
  TripState({this.tripModelObj});

  TripModel? tripModelObj;

  @override
  List<Object?> get props => [
        tripModelObj,
      ];
  TripState copyWith({TripModel? tripModelObj}) {
    return TripState(
      tripModelObj: tripModelObj ?? this.tripModelObj,
    );
  }
}
