// ignore_for_file: must_be_immutable

part of 'trip_one_bloc.dart';

/// Represents the state of TripOne in the application.
class TripOneState extends Equatable {
  TripOneState({this.tripOneModelObj});

  TripOneModel? tripOneModelObj;

  @override
  List<Object?> get props => [
        tripOneModelObj,
      ];
  TripOneState copyWith({TripOneModel? tripOneModelObj}) {
    return TripOneState(
      tripOneModelObj: tripOneModelObj ?? this.tripOneModelObj,
    );
  }
}
