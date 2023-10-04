import 'bloc/trip_one_bloc.dart';
import 'models/trip_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';

class TripOneScreen extends StatelessWidget {
  const TripOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TripOneBloc>(
      create: (context) => TripOneBloc(TripOneState(
        tripOneModelObj: TripOneModel(),
      ))
        ..add(TripOneInitialEvent()),
      child: TripOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<TripOneBloc, TripOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                top: 14,
                bottom: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(
                      657,
                    ),
                    child: VerticalDivider(
                      width: getHorizontalSize(
                        4,
                      ),
                      thickness: getVerticalSize(
                        4,
                      ),
                      color: theme.colorScheme.primary,
                      indent: getHorizontalSize(
                        52,
                      ),
                      endIndent: getHorizontalSize(
                        580,
                      ),
                    ),
                  ),
                  CustomIconButton(
                    height: 50,
                    width: 50,
                    margin: getMargin(
                      left: 20,
                      top: 40,
                      bottom: 567,
                    ),
                    padding: getPadding(
                      all: 9,
                    ),
                    decoration: IconButtonStyleHelper.fillBluegray900,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgForward,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 12,
                      top: 2,
                    ),
                    padding: getPadding(
                      left: 15,
                      top: 28,
                      right: 15,
                      bottom: 28,
                    ),
                    decoration: AppDecoration.fill1.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "msg_chola_dhesam_pray".tr,
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
                                left: 59,
                              ),
                              child: SizedBox(
                                height: getVerticalSize(
                                  17,
                                ),
                                child: VerticalDivider(
                                  width: getHorizontalSize(
                                    4,
                                  ),
                                  thickness: getVerticalSize(
                                    4,
                                  ),
                                  color: theme.colorScheme.onErrorContainer,
                                  endIndent: getHorizontalSize(
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomElevatedButton(
                          text: "lbl_invitepeople".tr,
                          margin: getMargin(
                            top: 22,
                          ),
                          buttonStyle: CustomButtonStyles.fillWhiteA70001TL4
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
                            getHorizontalSize(
                              116,
                            ),
                            getVerticalSize(
                              32,
                            ),
                          ))),
                          buttonTextStyle:
                              CustomTextStyles.labelLargeOnErrorContainer,
                        ),
                        CustomElevatedButton(
                          text: "lbl_your_trip".tr,
                          margin: getMargin(
                            top: 28,
                          ),
                          leftIcon: Container(
                            margin: getMargin(
                              right: 15,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCar,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillWhiteA70001TL4
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
                            getHorizontalSize(
                              195,
                            ),
                            getVerticalSize(
                              42,
                            ),
                          ))),
                          buttonTextStyle:
                              CustomTextStyles.labelLargePrimaryContainer,
                        ),
                        Container(
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            right: 16,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgVolumeGray900,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "lbl_restaurants".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer
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
                        Container(
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            right: 16,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgHotelGray900,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "lbl_hotels".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer
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
                        CustomElevatedButton(
                          text: "msg_expenses_payment".tr,
                          margin: getMargin(
                            top: 4,
                          ),
                          leftIcon: Container(
                            margin: getMargin(
                              right: 16,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMusic,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillWhiteA70001TL4
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
                            getHorizontalSize(
                              195,
                            ),
                            getVerticalSize(
                              42,
                            ),
                          ))),
                          buttonTextStyle:
                              CustomTextStyles.labelLargePrimaryContainer,
                        ),
                        Container(
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            right: 16,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCar,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "msg_vehicle_details".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer
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
                        Container(
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            right: 16,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCar,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "lbl_checklist".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer
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
                        Container(
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            right: 16,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgNotificationGray900,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "lbl_notification".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer
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
                        Container(
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            right: 16,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCar,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "lbl_member".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer
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
                        Container(
                          margin: getMargin(
                            top: 4,
                            bottom: 89,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            right: 16,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgMenuGray900,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 6,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "lbl_group_chat".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer
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
                  Container(
                    margin: getMargin(
                      left: 10,
                      top: 28,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderTL8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.customBorderTL8,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              28,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderTL8,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle32x28,
                                  height: getVerticalSize(
                                    32,
                                  ),
                                  width: getHorizontalSize(
                                    28,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgBiarrowright,
                                  height: getSize(
                                    16,
                                  ),
                                  width: getSize(
                                    16,
                                  ),
                                  radius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(
                                    right: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            top: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.customBorderTL8,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              581,
                            ),
                            width: getHorizontalSize(
                              53,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderTL8,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgMapsiclemap581x53,
                                  height: getVerticalSize(
                                    581,
                                  ),
                                  width: getHorizontalSize(
                                    53,
                                  ),
                                  radius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      555,
                                    ),
                                    width: getHorizontalSize(
                                      29,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgGroup409,
                                          height: getVerticalSize(
                                            505,
                                          ),
                                          width: getHorizontalSize(
                                            5,
                                          ),
                                          radius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                              getHorizontalSize(
                                                8,
                                              ),
                                            ),
                                            bottomLeft: Radius.circular(
                                              getHorizontalSize(
                                                8,
                                              ),
                                            ),
                                          ),
                                          alignment: Alignment.bottomRight,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(
                                              top: 116,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL8,
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                32,
                                              ),
                                              width: getHorizontalSize(
                                                12,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL8,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      height: getVerticalSize(
                                                        17,
                                                      ),
                                                      width: getHorizontalSize(
                                                        11,
                                                      ),
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse2117x11,
                                                            height:
                                                                getVerticalSize(
                                                              17,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              11,
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse227x6,
                                                            height:
                                                                getVerticalSize(
                                                              7,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              6,
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL8,
                                                      ),
                                                      child: Container(
                                                        height: getVerticalSize(
                                                          23,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          12,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL8,
                                                        ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse2417x12,
                                                              height:
                                                                  getVerticalSize(
                                                                17,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                12,
                                                              ),
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                  23,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  12,
                                                                ),
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgLocationPrimary23x12,
                                                                      height:
                                                                          getVerticalSize(
                                                                        23,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        12,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                        bottomLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImageWhiteA70001,
                                                                      height:
                                                                          getVerticalSize(
                                                                        11,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        8,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                        bottomLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                      margin:
                                                                          getMargin(
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
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(
                                              bottom: 221,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL8,
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                32,
                                              ),
                                              width: getHorizontalSize(
                                                15,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL8,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      height: getVerticalSize(
                                                        17,
                                                      ),
                                                      width: getHorizontalSize(
                                                        14,
                                                      ),
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse211,
                                                            height:
                                                                getVerticalSize(
                                                              17,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              14,
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                7,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                8,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    4,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL8,
                                                      ),
                                                      child: Container(
                                                        height: getVerticalSize(
                                                          23,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          15,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL8,
                                                        ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse241,
                                                              height:
                                                                  getVerticalSize(
                                                                17,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                15,
                                                              ),
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                  23,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  15,
                                                                ),
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgLocationPrimary23x12,
                                                                      height:
                                                                          getVerticalSize(
                                                                        23,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        15,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                        bottomLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgImage,
                                                                      height:
                                                                          getSize(
                                                                        11,
                                                                      ),
                                                                      width:
                                                                          getSize(
                                                                        11,
                                                                      ),
                                                                      radius: BorderRadius
                                                                          .only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                        bottomLeft:
                                                                            Radius.circular(
                                                                          getHorizontalSize(
                                                                            8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                      margin:
                                                                          getMargin(
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
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            width: getHorizontalSize(
                                              29,
                                            ),
                                            padding: getPadding(
                                              top: 14,
                                              bottom: 14,
                                            ),
                                            decoration:
                                                AppDecoration.txtFill.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtCustomBorderTL8,
                                            ),
                                            child: Text(
                                              "msg_search_locations".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleMediumGray900Medium,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              height: getVerticalSize(
                67,
              ),
              width: getHorizontalSize(
                239,
              ),
              margin: getMargin(
                left: 68,
                right: 68,
                bottom: 20,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
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
                            ImageConstant.imgGroup347,
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
                              bottom: 4,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 47,
                              top: 13,
                            ),
                            child: Text(
                              "lbl_trips".tr,
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
                            svgPath: ImageConstant.imgSettingsWhiteA70001,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 45,
                              bottom: 4,
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
                              left: 49,
                              bottom: 4,
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
                      left: 64,
                    ),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: IconButtonStyleHelper.fillOrange100TL20,
                    alignment: Alignment.topLeft,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCar,
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
