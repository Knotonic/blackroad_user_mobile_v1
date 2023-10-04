// ignore_for_file: must_be_immutable

part of 'trip_details_one_bloc.dart';

/// Represents the state of TripDetailsOne in the application.
class TripDetailsOneState extends Equatable {
  TripDetailsOneState({this.tripDetailsOneModelObj});

  TripDetailsOneModel? tripDetailsOneModelObj;

  @override
  List<Object?> get props => [
        tripDetailsOneModelObj,
      ];
  TripDetailsOneState copyWith({TripDetailsOneModel? tripDetailsOneModelObj}) {
    return TripDetailsOneState(
      tripDetailsOneModelObj:
          tripDetailsOneModelObj ?? this.tripDetailsOneModelObj,
    );
  }
}
