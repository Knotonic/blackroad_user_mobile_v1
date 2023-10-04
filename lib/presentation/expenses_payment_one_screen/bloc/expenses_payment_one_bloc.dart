import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listglobe1_item_model.dart';
import 'package:blackroad_v1/presentation/expenses_payment_one_screen/models/expenses_payment_one_model.dart';
part 'expenses_payment_one_event.dart';
part 'expenses_payment_one_state.dart';

/// A bloc that manages the state of a ExpensesPaymentOne according to the event that is dispatched to it.
class ExpensesPaymentOneBloc
    extends Bloc<ExpensesPaymentOneEvent, ExpensesPaymentOneState> {
  ExpensesPaymentOneBloc(ExpensesPaymentOneState initialState)
      : super(initialState) {
    on<ExpensesPaymentOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExpensesPaymentOneInitialEvent event,
    Emitter<ExpensesPaymentOneState> emit,
  ) async {
    emit(state.copyWith(
        expensesPaymentOneModelObj: state.expensesPaymentOneModelObj?.copyWith(
      listglobe1ItemList: fillListglobe1ItemList(),
    )));
  }

  List<Listglobe1ItemModel> fillListglobe1ItemList() {
    return List.generate(3, (index) => Listglobe1ItemModel());
  }
}
