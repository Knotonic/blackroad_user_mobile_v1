// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sliderunsplashv_item_model.dart';

/// This class defines the variables used in the [home_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeOneModel extends Equatable {
  HomeOneModel({this.sliderunsplashvItemList = const []});

  List<SliderunsplashvItemModel> sliderunsplashvItemList;

  HomeOneModel copyWith(
      {List<SliderunsplashvItemModel>? sliderunsplashvItemList}) {
    return HomeOneModel(
      sliderunsplashvItemList:
          sliderunsplashvItemList ?? this.sliderunsplashvItemList,
    );
  }

  @override
  List<Object?> get props => [sliderunsplashvItemList];
}
