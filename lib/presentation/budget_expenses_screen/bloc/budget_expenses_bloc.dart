import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/budget_expenses_screen/models/budget_expenses_model.dart';
part 'budget_expenses_event.dart';
part 'budget_expenses_state.dart';

/// A bloc that manages the state of a BudgetExpenses according to the event that is dispatched to it.
class BudgetExpensesBloc
    extends Bloc<BudgetExpensesEvent, BudgetExpensesState> {
  BudgetExpensesBloc(BudgetExpensesState initialState) : super(initialState) {
    on<BudgetExpensesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BudgetExpensesInitialEvent event,
    Emitter<BudgetExpensesState> emit,
  ) async {}
}
