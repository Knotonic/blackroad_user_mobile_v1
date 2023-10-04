// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.username,
    this.gender,
    this.dob,
    this.mobileNumber,
  });

  String? username;

  String? gender;

  DateTime? dob;

  String? mobileNumber;

  @override
  List<Object?> get props => [
        username,
        gender,
        dob,
        mobileNumber,
      ];
  SignUpState copyWith({
    String? username,
    String? gender,
    DateTime? dob,
    String? mobileNumber,
  }) {
    return SignUpState(
      username: username ?? this.username,
      gender: gender ?? this.gender,
      dob: dob ?? this.dob,
      mobileNumber: mobileNumber ?? this.mobileNumber,
    );
  }
}
