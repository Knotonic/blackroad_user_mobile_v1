import '../models/listglobe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

// ignore: must_be_immutable
class ListglobeItemWidget extends StatelessWidget {
  ListglobeItemWidget(
    this.listglobeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListglobeItemModel listglobeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 19,
        top: 14,
        right: 19,
        bottom: 14,
      ),
      decoration: AppDecoration.fill.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGlobe48x48,
            height: getSize(
              43,
            ),
            width: getSize(
              43,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 22,
              top: 2,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listglobeItemModelObj.descriptionTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall!.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.01,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_today_03_47pm".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodySmall!.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.06,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 12,
              right: 15,
              bottom: 15,
            ),
            child: Text(
              "lbl_127".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.labelLargeRed400.copyWith(
                letterSpacing: getHorizontalSize(
                  0.06,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
