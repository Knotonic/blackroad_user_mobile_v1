import 'bloc/map1_bloc.dart';
import 'models/map1_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_7.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class Map1Screen extends StatelessWidget {
  const Map1Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Map1Bloc>(
      create: (context) => Map1Bloc(Map1State(
        map1ModelObj: Map1Model(),
      ))
        ..add(Map1InitialEvent()),
      child: Map1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Map1Bloc, Map1State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: SizedBox(
              height: getVerticalSize(
                784,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMapsiclemap,
                    height: getVerticalSize(
                      785,
                    ),
                    width: getHorizontalSize(
                      375,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomAppBar(
                          height: getVerticalSize(
                            98,
                          ),
                          leadingWidth: 56,
                          leading: Container(
                            height: getSize(
                              32,
                            ),
                            width: getSize(
                              32,
                            ),
                            margin: getMargin(
                              left: 24,
                              top: 44,
                              bottom: 22,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                AppbarImage(
                                  height: getSize(
                                    32,
                                  ),
                                  width: getSize(
                                    32,
                                  ),
                                  svgPath: ImageConstant.imgGlobe,
                                ),
                                AppbarImage(
                                  height: getSize(
                                    16,
                                  ),
                                  width: getSize(
                                    16,
                                  ),
                                  svgPath:
                                      ImageConstant.imgBiarrowrightWhiteA70001,
                                  margin: getMargin(
                                    all: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 38,
                              bottom: 11,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppbarSubtitle(
                                  text: "msg_chola_desham_prayanam".tr,
                                ),
                                AppbarSubtitle7(
                                  text: "msg_the_way_to_the_cholas".tr,
                                  margin: getMargin(
                                    left: 1,
                                    top: 5,
                                    right: 79,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            Padding(
                              padding: getPadding(
                                left: 24,
                                right: 24,
                              ),
                              child: SizedBox(
                                height: getVerticalSize(
                                  98,
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
                                    52,
                                  ),
                                  endIndent: getHorizontalSize(
                                    30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          styleType: Style.bgFill,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    552,
                                  ),
                                  width: getHorizontalSize(
                                    187,
                                  ),
                                  margin: getMargin(
                                    left: 87,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgVector18,
                                        height: getVerticalSize(
                                          523,
                                        ),
                                        width: getHorizontalSize(
                                          175,
                                        ),
                                        alignment: Alignment.centerRight,
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgEye,
                                        height: getSize(
                                          28,
                                        ),
                                        width: getSize(
                                          28,
                                        ),
                                        alignment: Alignment.bottomRight,
                                        margin: getMargin(
                                          right: 22,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgEye,
                                        height: getSize(
                                          28,
                                        ),
                                        width: getSize(
                                          28,
                                        ),
                                        alignment: Alignment.topLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 21,
                                  ),
                                  padding: getPadding(
                                    left: 24,
                                    top: 19,
                                    right: 24,
                                    bottom: 19,
                                  ),
                                  decoration: AppDecoration.fill,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "msg_1_hrs_30_min_1260".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge!
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.06,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 42,
                                            ),
                                            child: Text(
                                              "msg_distance_travelled".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.labelLarge!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.06,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomElevatedButton(
                                              text: "lbl_start".tr,
                                              leftIcon: Container(
                                                margin: getMargin(
                                                  right: 8,
                                                ),
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSend,
                                                ),
                                              ),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimary
                                                  .copyWith(
                                                      fixedSize:
                                                          MaterialStateProperty
                                                              .all<Size>(Size(
                                                getHorizontalSize(
                                                  154,
                                                ),
                                                getVerticalSize(
                                                  40,
                                                ),
                                              ))),
                                              buttonTextStyle: CustomTextStyles
                                                  .titleSmallWhiteA70001,
                                            ),
                                            CustomElevatedButton(
                                              text: "lbl_204_km".tr,
                                              leftIcon: Container(
                                                margin: getMargin(
                                                  right: 8,
                                                ),
                                                child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgDistancePrimarycontainer,
                                                ),
                                              ),
                                              buttonStyle: CustomButtonStyles
                                                  .fillOrange100
                                                  .copyWith(
                                                      fixedSize:
                                                          MaterialStateProperty
                                                              .all<Size>(Size(
                                                getHorizontalSize(
                                                  153,
                                                ),
                                                getVerticalSize(
                                                  40,
                                                ),
                                              ))),
                                              buttonTextStyle: CustomTextStyles
                                                  .titleSmallPrimaryContainer,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
