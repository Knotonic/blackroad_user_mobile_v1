import '../models/sliderunsplashv_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

// ignore: must_be_immutable
class SliderunsplashvItemWidget extends StatelessWidget {
  SliderunsplashvItemWidget(
    this.sliderunsplashvItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderunsplashvItemModel sliderunsplashvItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashv63ul8s28ew,
          height: getVerticalSize(
            118,
          ),
          width: getHorizontalSize(
            135,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              16,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 12,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_munroe_island".tr,
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
                  top: 9,
                ),
                child: Text(
                  "msg_munroe_is_an_un".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.bodySmall12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
