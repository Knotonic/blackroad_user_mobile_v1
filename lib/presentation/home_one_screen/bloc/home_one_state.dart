// ignore_for_file: must_be_immutable

part of 'home_one_bloc.dart';

/// Represents the state of HomeOne in the application.
class HomeOneState extends Equatable {
  HomeOneState({
    this.sliderIndex = 0,
    this.homeOneModelObj,
  });

  HomeOneModel? homeOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homeOneModelObj,
      ];
  HomeOneState copyWith({
    int? sliderIndex,
    HomeOneModel? homeOneModelObj,
  }) {
    return HomeOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeOneModelObj: homeOneModelObj ?? this.homeOneModelObj,
    );
  }
}
