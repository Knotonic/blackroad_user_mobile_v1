// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listglobe1_item_model.dart';/// This class defines the variables used in the [expenses_payment_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExpensesPaymentOneModel extends Equatable {ExpensesPaymentOneModel({this.listglobe1ItemList = const []});

List<Listglobe1ItemModel> listglobe1ItemList;

ExpensesPaymentOneModel copyWith({List<Listglobe1ItemModel>? listglobe1ItemList}) { return ExpensesPaymentOneModel(
listglobe1ItemList : listglobe1ItemList ?? this.listglobe1ItemList,
); } 
@override List<Object?> get props => [listglobe1ItemList];
 }
