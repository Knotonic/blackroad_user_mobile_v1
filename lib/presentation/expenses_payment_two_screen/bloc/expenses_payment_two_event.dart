// ignore_for_file: must_be_immutable

part of 'expenses_payment_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExpensesPaymentTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesPaymentTwoEvent extends Equatable {}

/// Event that is dispatched when the ExpensesPaymentTwo widget is first created.
class ExpensesPaymentTwoInitialEvent extends ExpensesPaymentTwoEvent {
  @override
  List<Object?> get props => [];
}
