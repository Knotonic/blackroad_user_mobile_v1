// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'expenses_item_model.dart';/// This class defines the variables used in the [expenses_payment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExpensesPaymentModel extends Equatable {ExpensesPaymentModel({this.expensesItemList = const []});

List<ExpensesItemModel> expensesItemList;

ExpensesPaymentModel copyWith({List<ExpensesItemModel>? expensesItemList}) { return ExpensesPaymentModel(
expensesItemList : expensesItemList ?? this.expensesItemList,
); } 
@override List<Object?> get props => [expensesItemList];
 }
