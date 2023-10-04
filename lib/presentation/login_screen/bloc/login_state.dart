// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState(
      {this.mobilenoController,
      this.passwordController,
      this.mobileNumber,
      this.password,
      this.showPassword = false});

  TextEditingController? mobilenoController;
  TextEditingController? passwordController;
  String? mobileNumber;
  String? password;
  bool showPassword;

  @override
  List<Object?> get props => [mobileNumber, password, showPassword];
  LoginState copyWith(
      {TextEditingController? mobilenoController,
      TextEditingController? passwordController,
      String? mobileNumber,
      String? password,
      bool? showPassword}) {
    return LoginState(
        mobilenoController: mobilenoController ?? this.mobilenoController,
        passwordController: passwordController ?? this.passwordController,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        password: password ?? this.password,
        showPassword: showPassword ?? this.showPassword);
  }
}
