// ignore_for_file: must_be_immutable

part of 'budget_expenses_bloc.dart';

/// Represents the state of BudgetExpenses in the application.
class BudgetExpensesState extends Equatable {
  BudgetExpensesState({this.budgetExpensesModelObj});

  BudgetExpensesModel? budgetExpensesModelObj;

  @override
  List<Object?> get props => [
        budgetExpensesModelObj,
      ];
  BudgetExpensesState copyWith({BudgetExpensesModel? budgetExpensesModelObj}) {
    return BudgetExpensesState(
      budgetExpensesModelObj:
          budgetExpensesModelObj ?? this.budgetExpensesModelObj,
    );
  }
}
