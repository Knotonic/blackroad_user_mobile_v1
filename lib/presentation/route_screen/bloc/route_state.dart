// ignore_for_file: must_be_immutable

part of 'route_bloc.dart';

/// Represents the state of Route in the application.
class RouteState extends Equatable {
  RouteState({
    this.searchController,
    this.routeModelObj,
  });

  TextEditingController? searchController;

  RouteModel? routeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        routeModelObj,
      ];
  RouteState copyWith({
    TextEditingController? searchController,
    RouteModel? routeModelObj,
  }) {
    return RouteState(
      searchController: searchController ?? this.searchController,
      routeModelObj: routeModelObj ?? this.routeModelObj,
    );
  }
}
