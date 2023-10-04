// ignore_for_file: must_be_immutable

part of 'trip_details_two_bloc.dart';

/// Represents the state of TripDetailsTwo in the application.
class TripDetailsTwoState extends Equatable {
  TripDetailsTwoState({this.tripDetailsTwoModelObj});

  TripDetailsTwoModel? tripDetailsTwoModelObj;

  @override
  List<Object?> get props => [
        tripDetailsTwoModelObj,
      ];
  TripDetailsTwoState copyWith({TripDetailsTwoModel? tripDetailsTwoModelObj}) {
    return TripDetailsTwoState(
      tripDetailsTwoModelObj:
          tripDetailsTwoModelObj ?? this.tripDetailsTwoModelObj,
    );
  }
}
