import '../models/map_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';

// ignore: must_be_immutable
class MapTwoItemWidget extends StatelessWidget {
  MapTwoItemWidget(
    this.mapTwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MapTwoItemModel mapTwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderTL64,
        ),
        child: Container(
          height: getVerticalSize(
            32,
          ),
          width: getHorizontalSize(
            19,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.customBorderTL64,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: getPadding(
                    left: 5,
                    top: 4,
                    right: 5,
                    bottom: 4,
                  ),
                  decoration: AppDecoration.fill5.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Container(
                    height: getVerticalSize(
                      7,
                    ),
                    width: getHorizontalSize(
                      8,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          4,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.customBorderTL64,
                  ),
                  child: Container(
                    height: getVerticalSize(
                      23,
                    ),
                    width: getHorizontalSize(
                      19,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderTL64,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: getVerticalSize(
                              17,
                            ),
                            width: getHorizontalSize(
                              18,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  9,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.yellow80001,
                                  spreadRadius: getHorizontalSize(
                                    2,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2,
                                  ),
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: getVerticalSize(
                              23,
                            ),
                            width: getHorizontalSize(
                              19,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgLocationPrimary,
                                  height: getVerticalSize(
                                    23,
                                  ),
                                  width: getHorizontalSize(
                                    19,
                                  ),
                                  radius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        64,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        64,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgImage,
                                  height: getSize(
                                    11,
                                  ),
                                  width: getSize(
                                    11,
                                  ),
                                  radius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        64,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        64,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(
                                    left: 4,
                                    top: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
