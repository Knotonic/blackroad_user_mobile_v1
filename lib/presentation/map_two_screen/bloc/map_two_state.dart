// ignore_for_file: must_be_immutable

part of 'map_two_bloc.dart';

/// Represents the state of MapTwo in the application.
class MapTwoState extends Equatable {
  MapTwoState({
    this.searchController,
    this.mapTwoModelObj,
  });

  TextEditingController? searchController;

  MapTwoModel? mapTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        mapTwoModelObj,
      ];
  MapTwoState copyWith({
    TextEditingController? searchController,
    MapTwoModel? mapTwoModelObj,
  }) {
    return MapTwoState(
      searchController: searchController ?? this.searchController,
      mapTwoModelObj: mapTwoModelObj ?? this.mapTwoModelObj,
    );
  }
}
