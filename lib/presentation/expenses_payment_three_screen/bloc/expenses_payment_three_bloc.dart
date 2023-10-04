import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:blackroad_v1/presentation/expenses_payment_three_screen/models/expenses_payment_three_model.dart';
part 'expenses_payment_three_event.dart';
part 'expenses_payment_three_state.dart';

/// A bloc that manages the state of a ExpensesPaymentThree according to the event that is dispatched to it.
class ExpensesPaymentThreeBloc
    extends Bloc<ExpensesPaymentThreeEvent, ExpensesPaymentThreeState> {
  ExpensesPaymentThreeBloc(ExpensesPaymentThreeState initialState)
      : super(initialState) {
    on<ExpensesPaymentThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExpensesPaymentThreeInitialEvent event,
    Emitter<ExpensesPaymentThreeState> emit,
  ) async {}
}
