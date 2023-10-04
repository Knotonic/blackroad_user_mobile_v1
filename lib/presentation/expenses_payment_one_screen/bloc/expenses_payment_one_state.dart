// ignore_for_file: must_be_immutable

part of 'expenses_payment_one_bloc.dart';

/// Represents the state of ExpensesPaymentOne in the application.
class ExpensesPaymentOneState extends Equatable {
  ExpensesPaymentOneState({this.expensesPaymentOneModelObj});

  ExpensesPaymentOneModel? expensesPaymentOneModelObj;

  @override
  List<Object?> get props => [
        expensesPaymentOneModelObj,
      ];
  ExpensesPaymentOneState copyWith(
      {ExpensesPaymentOneModel? expensesPaymentOneModelObj}) {
    return ExpensesPaymentOneState(
      expensesPaymentOneModelObj:
          expensesPaymentOneModelObj ?? this.expensesPaymentOneModelObj,
    );
  }
}
