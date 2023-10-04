// ignore_for_file: must_be_immutable

part of 'trip_details_bloc.dart';

/// Represents the state of TripDetails in the application.
class TripDetailsState extends Equatable {
  TripDetailsState({this.tripDetailsModelObj});

  TripDetailsModel? tripDetailsModelObj;

  @override
  List<Object?> get props => [
        tripDetailsModelObj,
      ];
  TripDetailsState copyWith({TripDetailsModel? tripDetailsModelObj}) {
    return TripDetailsState(
      tripDetailsModelObj: tripDetailsModelObj ?? this.tripDetailsModelObj,
    );
  }
}
