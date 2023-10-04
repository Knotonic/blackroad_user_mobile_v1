// ignore_for_file: must_be_immutable

part of 'expenses_payment_three_bloc.dart';

/// Represents the state of ExpensesPaymentThree in the application.
class ExpensesPaymentThreeState extends Equatable {
  ExpensesPaymentThreeState({this.expensesPaymentThreeModelObj});

  ExpensesPaymentThreeModel? expensesPaymentThreeModelObj;

  @override
  List<Object?> get props => [
        expensesPaymentThreeModelObj,
      ];
  ExpensesPaymentThreeState copyWith(
      {ExpensesPaymentThreeModel? expensesPaymentThreeModelObj}) {
    return ExpensesPaymentThreeState(
      expensesPaymentThreeModelObj:
          expensesPaymentThreeModelObj ?? this.expensesPaymentThreeModelObj,
    );
  }
}
