// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'map_two_item_model.dart';/// This class defines the variables used in the [map_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MapTwoModel extends Equatable {MapTwoModel({this.mapTwoItemList = const []});

List<MapTwoItemModel> mapTwoItemList;

MapTwoModel copyWith({List<MapTwoItemModel>? mapTwoItemList}) { return MapTwoModel(
mapTwoItemList : mapTwoItemList ?? this.mapTwoItemList,
); } 
@override List<Object?> get props => [mapTwoItemList];
 }
