// ignore_for_file: must_be_immutable

part of 'expenses_payment_bloc.dart';

/// Represents the state of ExpensesPayment in the application.
class ExpensesPaymentState extends Equatable {
  ExpensesPaymentState({
    this.phonenumberController,
    this.expensesPaymentModelObj,
  });

  TextEditingController? phonenumberController;

  ExpensesPaymentModel? expensesPaymentModelObj;

  @override
  List<Object?> get props => [
        phonenumberController,
        expensesPaymentModelObj,
      ];
  ExpensesPaymentState copyWith({
    TextEditingController? phonenumberController,
    ExpensesPaymentModel? expensesPaymentModelObj,
  }) {
    return ExpensesPaymentState(
      phonenumberController:
          phonenumberController ?? this.phonenumberController,
      expensesPaymentModelObj:
          expensesPaymentModelObj ?? this.expensesPaymentModelObj,
    );
  }
}
