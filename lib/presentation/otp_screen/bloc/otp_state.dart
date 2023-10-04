// ignore_for_file: must_be_immutable

part of 'otp_bloc.dart';

/// Represents the state of Otp in the application.
class OtpState extends Equatable {
  OtpState({
    this.otpController,
    this.OtpModelObj,
  });

  TextEditingController? otpController;

  OtpModel? OtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        OtpModelObj,
      ];
  OtpState copyWith({
    TextEditingController? otpController,
    OtpModel? OtpModelObj,
  }) {
    return OtpState(
      otpController: otpController ?? this.otpController,
      OtpModelObj: OtpModelObj ?? this.OtpModelObj,
    );
  }
}
