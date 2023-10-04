import '../models/expenses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

// ignore: must_be_immutable
class ExpensesItemWidget extends StatelessWidget {
  ExpensesItemWidget(
    this.expensesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExpensesItemModel expensesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgGlobe38x38,
      height: getSize(
        38,
      ),
      width: getSize(
        38,
      ),
    );
  }
}
