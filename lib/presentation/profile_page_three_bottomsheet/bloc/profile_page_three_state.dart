// ignore_for_file: must_be_immutable

part of 'profile_page_three_bloc.dart';

/// Represents the state of ProfilePageThree in the application.
class ProfilePageThreeState extends Equatable {
  ProfilePageThreeState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.profilePageThreeModelObj,
  });

  ProfilePageThreeModel? profilePageThreeModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        profilePageThreeModelObj,
      ];
  ProfilePageThreeState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    ProfilePageThreeModel? profilePageThreeModelObj,
  }) {
    return ProfilePageThreeState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      profilePageThreeModelObj:
          profilePageThreeModelObj ?? this.profilePageThreeModelObj,
    );
  }
}
