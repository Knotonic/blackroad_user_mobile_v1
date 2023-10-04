import 'bloc/frame_481_bloc.dart';
import 'models/frame_481_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class Frame481Screen extends StatelessWidget {
  const Frame481Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame481Bloc>(
      create: (context) => Frame481Bloc(Frame481State(
        frame481ModelObj: Frame481Model(),
      ))
        ..add(Frame481InitialEvent()),
      child: Frame481Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Frame481Bloc, Frame481State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Container(
              width: getHorizontalSize(
                376,
              ),
              padding: getPadding(
                left: 24,
                top: 19,
                right: 24,
                bottom: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 12,
                    ),
                    child: Text(
                      "msg_chola_desha_prayanam".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumGray900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.02,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 6,
                      top: 15,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: getHorizontalSize(
                            97,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: getVerticalSize(
                                  20,
                                ),
                                width: getHorizontalSize(
                                  18,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 3,
                                  bottom: 1,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_oct".tr,
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.06,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_13_1998".tr,
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.06,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            65,
                          ),
                          margin: getMargin(
                            left: 22,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgDaysGray900,
                                height: getVerticalSize(
                                  20,
                                ),
                                width: getHorizontalSize(
                                  18,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 4,
                                ),
                                child: Text(
                                  "lbl_2_days".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.06,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            left: 22,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgDistance,
                                height: getVerticalSize(
                                  20,
                                ),
                                width: getHorizontalSize(
                                  18,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 3,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_806_kms".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
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
                      top: 20,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: appTheme.blueGray20001,
                      indent: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 15,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_13_oct_2022".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLocationBlueGray900,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            left: 23,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 20,
                            top: 3,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_chennai".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                CustomTextStyles.titleSmallBluegray900.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: getVerticalSize(
                            88,
                          ),
                          child: VerticalDivider(
                            width: getHorizontalSize(
                              4,
                            ),
                            thickness: getVerticalSize(
                              4,
                            ),
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 28,
                            top: 18,
                            bottom: 27,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgDistanceBlueGray900,
                                    height: getSize(
                                      12,
                                    ),
                                    width: getSize(
                                      12,
                                    ),
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                    ),
                                    child: Text(
                                      "lbl_152_kms".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallBluegray900
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.06,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 14,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClockfill,
                                      height: getSize(
                                        12,
                                      ),
                                      width: getSize(
                                        12,
                                      ),
                                      margin: getMargin(
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "lbl_152_kms".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBluegray900
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_13_oct_2022".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLocationBlueGray900,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            left: 23,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 20,
                            top: 4,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_tanjore".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: getVerticalSize(
                            88,
                          ),
                          child: VerticalDivider(
                            width: getHorizontalSize(
                              4,
                            ),
                            thickness: getVerticalSize(
                              4,
                            ),
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 28,
                            top: 23,
                            bottom: 22,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgDistanceBlueGray900,
                                    height: getSize(
                                      12,
                                    ),
                                    width: getSize(
                                      12,
                                    ),
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                    ),
                                    child: Text(
                                      "lbl_152_kms".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallBluegray900
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.06,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 14,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClockfill,
                                      height: getSize(
                                        12,
                                      ),
                                      width: getSize(
                                        12,
                                      ),
                                      margin: getMargin(
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "lbl_152_kms".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBluegray900
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_13_oct_2022".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLocationBlueGray900,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            left: 23,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 20,
                            top: 4,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_trichy".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: getVerticalSize(
                            76,
                          ),
                          child: VerticalDivider(
                            width: getHorizontalSize(
                              4,
                            ),
                            thickness: getVerticalSize(
                              4,
                            ),
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 28,
                            top: 23,
                            bottom: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgDistanceBlueGray900,
                                    height: getSize(
                                      12,
                                    ),
                                    width: getSize(
                                      12,
                                    ),
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                    ),
                                    child: Text(
                                      "lbl_152_kms".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallBluegray900
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.06,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 14,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClockfill,
                                      height: getSize(
                                        12,
                                      ),
                                      width: getSize(
                                        12,
                                      ),
                                      margin: getMargin(
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "lbl_152_kms".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBluegray900
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              margin: getMargin(
                left: 55,
                right: 45,
                bottom: 31,
              ),
              decoration: AppDecoration.fill3.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder28,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 11,
                      bottom: 9,
                    ),
                    child: Text(
                      "lbl_detail".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.06,
                        ),
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    text: "lbl_route".tr,
                    margin: getMargin(
                      left: 20,
                    ),
                    buttonStyle:
                        CustomButtonStyles.fillWhiteA70001TL16.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                      getHorizontalSize(
                        73,
                      ),
                      getVerticalSize(
                        36,
                      ),
                    ))),
                    buttonTextStyle: CustomTextStyles.labelLargeBluegray900,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 12,
                      bottom: 8,
                    ),
                    child: Text(
                      "lbl_gallery".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 40,
                      top: 11,
                      bottom: 9,
                    ),
                    child: Text(
                      "lbl_members".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
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
        );
      },
    );
  }
}
