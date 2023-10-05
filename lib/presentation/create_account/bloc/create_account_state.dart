// ignore_for_file: must_be_immutable

part of 'create_account_bloc.dart';

/// Represents the state of CreateAccount in the application.
class CreateAccountState extends Equatable {
  CreateAccountState({
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
  CreateAccountState copyWith({
    String? username,
    String? gender,
    DateTime? dob,
    String? mobileNumber,
  }) {
    return CreateAccountState(
      username: username ?? this.username,
      gender: gender ?? this.gender,
      dob: dob ?? this.dob,
      mobileNumber: mobileNumber ?? this.mobileNumber,
    );
  }
}
