import '../models/route_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

// ignore: must_be_immutable
class RouteOneItemWidget extends StatelessWidget {
  RouteOneItemWidget(
    this.routeOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RouteOneItemModel routeOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle2,
        height: getVerticalSize(
          220,
        ),
        width: getHorizontalSize(
          154,
        ),
      ),
    );
  }
}
