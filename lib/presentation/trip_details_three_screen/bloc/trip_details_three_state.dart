// ignore_for_file: must_be_immutable

part of 'trip_details_three_bloc.dart';

/// Represents the state of TripDetailsThree in the application.
class TripDetailsThreeState extends Equatable {
  TripDetailsThreeState({this.tripDetailsThreeModelObj});

  TripDetailsThreeModel? tripDetailsThreeModelObj;

  @override
  List<Object?> get props => [
        tripDetailsThreeModelObj,
      ];
  TripDetailsThreeState copyWith(
      {TripDetailsThreeModel? tripDetailsThreeModelObj}) {
    return TripDetailsThreeState(
      tripDetailsThreeModelObj:
          tripDetailsThreeModelObj ?? this.tripDetailsThreeModelObj,
    );
  }
}
