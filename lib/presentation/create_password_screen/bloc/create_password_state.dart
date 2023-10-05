// ignore_for_file: must_be_immutable

part of 'create_password_bloc.dart';

/// Represents the state of CreatePassword in the application.
class CreatePasswordState extends Equatable {
  CreatePasswordState({
    this.passwordController,
    this.confirmpasswordController,
    this.CreatePasswordModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  CreatePasswordModel? CreatePasswordModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        CreatePasswordModelObj,
      ];
  CreatePasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    CreatePasswordModel? CreatePasswordModelObj,
  }) {
    return CreatePasswordState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      CreatePasswordModelObj: CreatePasswordModelObj ?? this.CreatePasswordModelObj,
    );
  }
}
