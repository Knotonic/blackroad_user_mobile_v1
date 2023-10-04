// ignore_for_file: must_be_immutable

part of 'expenses_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExpensesPayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesPaymentEvent extends Equatable {}

/// Event that is dispatched when the ExpensesPayment widget is first created.
class ExpensesPaymentInitialEvent extends ExpensesPaymentEvent {
  @override
  List<Object?> get props => [];
}
