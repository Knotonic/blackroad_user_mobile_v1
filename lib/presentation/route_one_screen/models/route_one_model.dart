// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'route_one_item_model.dart';/// This class defines the variables used in the [route_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RouteOneModel extends Equatable {RouteOneModel({this.routeOneItemList = const []});

List<RouteOneItemModel> routeOneItemList;

RouteOneModel copyWith({List<RouteOneItemModel>? routeOneItemList}) { return RouteOneModel(
routeOneItemList : routeOneItemList ?? this.routeOneItemList,
); } 
@override List<Object?> get props => [routeOneItemList];
 }
