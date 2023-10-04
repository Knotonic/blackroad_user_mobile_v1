// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.nameController,
    this.startingpointController,
    this.destinationpoinController,
    this.dateController,
    this.rectangle230Controller,
    this.isCheckbox = false,
    this.homeModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? startingpointController;

  TextEditingController? destinationpoinController;

  TextEditingController? dateController;

  TextEditingController? rectangle230Controller;

  HomeModel? homeModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        nameController,
        startingpointController,
        destinationpoinController,
        dateController,
        rectangle230Controller,
        isCheckbox,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? nameController,
    TextEditingController? startingpointController,
    TextEditingController? destinationpoinController,
    TextEditingController? dateController,
    TextEditingController? rectangle230Controller,
    bool? isCheckbox,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      nameController: nameController ?? this.nameController,
      startingpointController:
          startingpointController ?? this.startingpointController,
      destinationpoinController:
          destinationpoinController ?? this.destinationpoinController,
      dateController: dateController ?? this.dateController,
      rectangle230Controller:
          rectangle230Controller ?? this.rectangle230Controller,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
