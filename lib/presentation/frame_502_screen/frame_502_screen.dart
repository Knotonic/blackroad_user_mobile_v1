import 'bloc/frame_502_bloc.dart';
import 'models/frame_502_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';

class Frame502Screen extends StatelessWidget {
  const Frame502Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame502Bloc>(
      create: (context) => Frame502Bloc(Frame502State(
        frame502ModelObj: Frame502Model(),
      ))
        ..add(Frame502InitialEvent()),
      child: Frame502Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Frame502Bloc, Frame502State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Container(
              width: getHorizontalSize(
                383,
              ),
              padding: getPadding(
                left: 23,
                top: 12,
                right: 23,
                bottom: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: getHorizontalSize(
                        20,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: appTheme.gray200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 26,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgDistance,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 7,
                            bottom: 8,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_madurai".tr,
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
                                  top: 8,
                                ),
                                child: Text(
                                  "msg_start_navigate_near".tr,
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
                        CustomElevatedButton(
                          text: "lbl_start".tr,
                          leftIcon: Container(
                            margin: getMargin(
                              right: 8,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSend,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                            getHorizontalSize(
                              99,
                            ),
                            getVerticalSize(
                              40,
                            ),
                          ))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallWhiteA70001,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: appTheme.gray200,
                      indent: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 19,
                    ),
                    child: Text(
                      "msg_your_upcomming_trips".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall!.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.01,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      "msg_start_navigate_on".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall!.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 36,
                    ),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 43,
                          width: 43,
                          padding: getPadding(
                            all: 8,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgReply,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 20,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "msg_chola_desha_prayanam".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBluegray900
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.01,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Text(
                                  "msg_way_to_cholas_period".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallBluegray900
                                      .copyWith(
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
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 31,
                    ),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 43,
                          width: 43,
                          padding: getPadding(
                            all: 8,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgReply,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 2,
                              bottom: 1,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_south_coastal_ride".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBluegray900
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.01,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                  ),
                                  child: Text(
                                    "msg_admire_the_beauty".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallBluegray900
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 31,
                    ),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 43,
                          width: 43,
                          padding: getPadding(
                            all: 8,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgReply,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 20,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "msg_chola_desha_prayanam".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBluegray900
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.01,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: Text(
                                  "msg_way_to_cholas_period".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallBluegray900
                                      .copyWith(
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
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 31,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 43,
                          width: 43,
                          padding: getPadding(
                            all: 8,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgReply,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 2,
                              bottom: 1,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_south_coastal_ride".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBluegray900
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.01,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                  ),
                                  child: Text(
                                    "msg_admire_the_beauty".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallBluegray900
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
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
            bottomNavigationBar: Container(
              height: getVerticalSize(
                66,
              ),
              width: getHorizontalSize(
                239,
              ),
              margin: getMargin(
                left: 72,
                right: 72,
                bottom: 27,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: getHorizontalSize(
                        239,
                      ),
                      margin: getMargin(
                        top: 39,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup372,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgHome,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              bottom: 3,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgMap,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 48,
                              bottom: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 36,
                              top: 12,
                            ),
                            child: Text(
                              "lbl_discover".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeWhiteA70001_1
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.06,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgLocation,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 35,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomIconButton(
                    height: 40,
                    width: 40,
                    margin: getMargin(
                      right: 63,
                    ),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: IconButtonStyleHelper.fillOrange100,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgSettings,
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
