// ignore_for_file: must_be_immutable

part of 'sign_up_two_bloc.dart';

/// Represents the state of SignUpTwo in the application.
class SignUpTwoState extends Equatable {
  SignUpTwoState({
    this.mobilenumberController,
    this.signUpTwoModelObj,
  });

  TextEditingController? mobilenumberController;

  SignUpTwoModel? signUpTwoModelObj;

  @override
  List<Object?> get props => [
        mobilenumberController,
        signUpTwoModelObj,
      ];
  SignUpTwoState copyWith({
    TextEditingController? mobilenumberController,
    SignUpTwoModel? signUpTwoModelObj,
  }) {
    return SignUpTwoState(
      mobilenumberController:
          mobilenumberController ?? this.mobilenumberController,
      signUpTwoModelObj: signUpTwoModelObj ?? this.signUpTwoModelObj,
    );
  }
}
