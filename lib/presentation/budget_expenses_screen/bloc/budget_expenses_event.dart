// ignore_for_file: must_be_immutable

part of 'budget_expenses_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BudgetExpenses widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BudgetExpensesEvent extends Equatable {}

/// Event that is dispatched when the BudgetExpenses widget is first created.
class BudgetExpensesInitialEvent extends BudgetExpensesEvent {
  @override
  List<Object?> get props => [];
}
