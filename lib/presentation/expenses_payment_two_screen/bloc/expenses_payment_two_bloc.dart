import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listglobe_item_model.dart';
import 'package:blackroad_v1/presentation/expenses_payment_two_screen/models/expenses_payment_two_model.dart';
part 'expenses_payment_two_event.dart';
part 'expenses_payment_two_state.dart';

/// A bloc that manages the state of a ExpensesPaymentTwo according to the event that is dispatched to it.
class ExpensesPaymentTwoBloc
    extends Bloc<ExpensesPaymentTwoEvent, ExpensesPaymentTwoState> {
  ExpensesPaymentTwoBloc(ExpensesPaymentTwoState initialState)
      : super(initialState) {
    on<ExpensesPaymentTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExpensesPaymentTwoInitialEvent event,
    Emitter<ExpensesPaymentTwoState> emit,
  ) async {
    emit(state.copyWith(
        expensesPaymentTwoModelObj: state.expensesPaymentTwoModelObj?.copyWith(
      listglobeItemList: fillListglobeItemList(),
    )));
  }

  List<ListglobeItemModel> fillListglobeItemList() {
    return List.generate(3, (index) => ListglobeItemModel());
  }
}
