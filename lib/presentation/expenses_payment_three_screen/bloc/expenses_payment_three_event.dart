// ignore_for_file: must_be_immutable

part of 'expenses_payment_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExpensesPaymentThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesPaymentThreeEvent extends Equatable {}

/// Event that is dispatched when the ExpensesPaymentThree widget is first created.
class ExpensesPaymentThreeInitialEvent extends ExpensesPaymentThreeEvent {
  @override
  List<Object?> get props => [];
}
