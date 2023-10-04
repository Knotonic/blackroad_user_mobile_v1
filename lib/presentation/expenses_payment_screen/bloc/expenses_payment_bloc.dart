import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/expenses_item_model.dart';
import 'package:blackroad_v1/presentation/expenses_payment_screen/models/expenses_payment_model.dart';
part 'expenses_payment_event.dart';
part 'expenses_payment_state.dart';

/// A bloc that manages the state of a ExpensesPayment according to the event that is dispatched to it.
class ExpensesPaymentBloc
    extends Bloc<ExpensesPaymentEvent, ExpensesPaymentState> {
  ExpensesPaymentBloc(ExpensesPaymentState initialState) : super(initialState) {
    on<ExpensesPaymentInitialEvent>(_onInitialize);
  }

  List<ExpensesItemModel> fillExpensesItemList() {
    return List.generate(10, (index) => ExpensesItemModel());
  }

  _onInitialize(
    ExpensesPaymentInitialEvent event,
    Emitter<ExpensesPaymentState> emit,
  ) async {
    emit(state.copyWith(
      phonenumberController: TextEditingController(),
    ));
    emit(state.copyWith(
        expensesPaymentModelObj: state.expensesPaymentModelObj?.copyWith(
      expensesItemList: fillExpensesItemList(),
    )));
  }
}
