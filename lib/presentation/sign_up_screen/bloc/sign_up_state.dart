// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({this.mobileNumber, this.signUpModelObj, this.isLoading = false});

  String? mobileNumber;

  SignUpModel? signUpModelObj;
  bool isLoading;

  @override
  List<Object?> get props => [
        mobileNumber,
        signUpModelObj,
      ];
  SignUpState copyWith(
      {String? mobileNumber, SignUpModel? signUpModelObj, bool? isLoading}) {
    return SignUpState(
      isLoading: isLoading ?? this.isLoading,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
