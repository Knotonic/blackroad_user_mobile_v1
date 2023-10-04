import '../models/check_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CheckListItemWidget extends StatelessWidget {
  CheckListItemWidget(
    this.checkListItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CheckListItemModel checkListItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 19,
        top: 13,
        right: 19,
        bottom: 13,
      ),
      decoration: AppDecoration.fill.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 44,
            width: 44,
            margin: getMargin(
              bottom: 1,
            ),
            padding: getPadding(
              all: 5,
            ),
            decoration: IconButtonStyleHelper.fillIndigo400,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup439,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 21,
              top: 3,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_moring_breakfast".tr,
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
                    top: 5,
                  ),
                  child: Text(
                    checkListItemModelObj.durationTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.05,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 42,
              top: 13,
              bottom: 16,
            ),
            child: Text(
              "lbl_21_item".tr,
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
