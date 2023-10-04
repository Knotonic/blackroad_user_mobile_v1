// ignore_for_file: must_be_immutable

part of 'expenses_payment_two_bloc.dart';

/// Represents the state of ExpensesPaymentTwo in the application.
class ExpensesPaymentTwoState extends Equatable {
  ExpensesPaymentTwoState({this.expensesPaymentTwoModelObj});

  ExpensesPaymentTwoModel? expensesPaymentTwoModelObj;

  @override
  List<Object?> get props => [
        expensesPaymentTwoModelObj,
      ];
  ExpensesPaymentTwoState copyWith(
      {ExpensesPaymentTwoModel? expensesPaymentTwoModelObj}) {
    return ExpensesPaymentTwoState(
      expensesPaymentTwoModelObj:
          expensesPaymentTwoModelObj ?? this.expensesPaymentTwoModelObj,
    );
  }
}
