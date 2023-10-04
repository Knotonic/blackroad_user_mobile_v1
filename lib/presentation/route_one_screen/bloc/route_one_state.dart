// ignore_for_file: must_be_immutable

part of 'route_one_bloc.dart';

/// Represents the state of RouteOne in the application.
class RouteOneState extends Equatable {
  RouteOneState({this.routeOneModelObj});

  RouteOneModel? routeOneModelObj;

  @override
  List<Object?> get props => [
        routeOneModelObj,
      ];
  RouteOneState copyWith({RouteOneModel? routeOneModelObj}) {
    return RouteOneState(
      routeOneModelObj: routeOneModelObj ?? this.routeOneModelObj,
    );
  }
}
