// ignore_for_file: must_be_immutable

part of 'map_one_bloc.dart';

/// Represents the state of MapOne in the application.
class MapOneState extends Equatable {
  MapOneState({this.mapOneModelObj});

  MapOneModel? mapOneModelObj;

  @override
  List<Object?> get props => [
        mapOneModelObj,
      ];
  MapOneState copyWith({MapOneModel? mapOneModelObj}) {
    return MapOneState(
      mapOneModelObj: mapOneModelObj ?? this.mapOneModelObj,
    );
  }
}
