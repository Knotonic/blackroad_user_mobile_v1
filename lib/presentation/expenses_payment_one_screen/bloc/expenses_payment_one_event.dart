// ignore_for_file: must_be_immutable

part of 'expenses_payment_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExpensesPaymentOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesPaymentOneEvent extends Equatable {}

/// Event that is dispatched when the ExpensesPaymentOne widget is first created.
class ExpensesPaymentOneInitialEvent extends ExpensesPaymentOneEvent {
  @override
  List<Object?> get props => [];
}
