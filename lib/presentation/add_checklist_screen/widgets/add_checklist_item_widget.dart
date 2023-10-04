import '../models/add_checklist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AddChecklistItemWidget extends StatelessWidget {
  AddChecklistItemWidget(
    this.addChecklistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddChecklistItemModel addChecklistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 2,
      ),
      padding: getPadding(
        left: 15,
        top: 14,
        right: 15,
        bottom: 14,
      ),
      decoration: AppDecoration.fill9.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: getHorizontalSize(
        258,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              left: 6,
              top: 6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.txtOutline1,
                  child: Text(
                    "lbl_work_out".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleLargePoppins,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    28,
                  ),
                  child: VerticalDivider(
                    width: getHorizontalSize(
                      4,
                    ),
                    thickness: getVerticalSize(
                      4,
                    ),
                    color: appTheme.whiteA70001,
                    indent: getHorizontalSize(
                      6,
                    ),
                    endIndent: getHorizontalSize(
                      6,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              79,
            ),
            width: getHorizontalSize(
              220,
            ),
            margin: getMargin(
              top: 8,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomIconButton(
                  height: 34,
                  width: 34,
                  padding: getPadding(
                    all: 11,
                  ),
                  decoration: IconButtonStyleHelper.outlineBlack900,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgPlus,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "msg_add_this_workout".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallWhiteA70001_1.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.06,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
