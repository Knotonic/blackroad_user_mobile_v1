// ignore_for_file: must_be_immutable

part of 'sign_up_three_bloc.dart';

/// Represents the state of SignUpThree in the application.
class SignUpThreeState extends Equatable {
  SignUpThreeState({
    this.passwordController,
    this.confirmpasswordController,
    this.signUpThreeModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SignUpThreeModel? signUpThreeModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        signUpThreeModelObj,
      ];
  SignUpThreeState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SignUpThreeModel? signUpThreeModelObj,
  }) {
    return SignUpThreeState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      signUpThreeModelObj: signUpThreeModelObj ?? this.signUpThreeModelObj,
    );
  }
}
