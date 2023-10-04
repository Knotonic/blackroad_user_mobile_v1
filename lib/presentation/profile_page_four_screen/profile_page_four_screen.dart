import 'bloc/profile_page_four_bloc.dart';
import 'models/profile_page_four_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';

class ProfilePageFourScreen extends StatelessWidget {
  const ProfilePageFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilePageFourBloc>(
        create: (context) => ProfilePageFourBloc(ProfilePageFourState(
            profilePageFourModelObj: ProfilePageFourModel()))
          ..add(ProfilePageFourInitialEvent()),
        child: ProfilePageFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfilePageFourBloc, ProfilePageFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(61),
                  leadingWidth: 56,
                  leading: AppbarImage(
                      height: getSize(32),
                      width: getSize(32),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 24, top: 12, bottom: 12),
                      onTap: () {
                        onTapArrowleft2(context);
                      }),
                  centerTitle: true,
                  title: AppbarImage(
                      height: getSize(32),
                      width: getSize(32),
                      imagePath: ImageConstant.imgGlobe48x48),
                  actions: [
                    Container(
                        height: getSize(32),
                        width: getSize(32),
                        margin:
                            getMargin(left: 27, top: 12, right: 27, bottom: 12),
                        child: Stack(alignment: Alignment.center, children: [
                          AppbarImage(
                              height: getSize(32),
                              width: getSize(32),
                              svgPath: ImageConstant.imgGroup458),
                          AppbarImage(
                              height: getSize(16),
                              width: getSize(16),
                              svgPath: ImageConstant.imgEdit,
                              margin: getMargin(all: 8))
                        ]))
                  ]),
              body: SizedBox(
                  height: getVerticalSize(707),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.maxFinite,
                            margin: getMargin(top: 26, bottom: 1),
                            padding: getPadding(
                                left: 24, top: 34, right: 24, bottom: 34),
                            decoration: AppDecoration.fill3.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL36),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 591),
                                      child: Text("lbl_my_information".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.02)))),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownWhiteA70001,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin: getMargin(bottom: 594))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: getMargin(top: 110),
                            decoration: AppDecoration.fill7.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL36),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          left: 23, top: 43, right: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_your_itinerary".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.titleMedium!
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.02))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowup,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(bottom: 2))
                                          ])),
                                  Container(
                                      margin: getMargin(top: 29),
                                      padding: getPadding(left: 24, right: 24),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              CustomIconButton(
                                                  height: 43,
                                                  width: 43,
                                                  padding: getPadding(all: 8),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillWhiteA70001TL21,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgReply)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 3,
                                                      bottom: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_chola_desha_prayanam"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .titleSmallWhiteA70001
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.01))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Text(
                                                                "msg_way_to_cholas_period"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmallWhiteA70001_1
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.06))))
                                                      ])),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgBiarrowrightWhiteA7000116x6,
                                                  height: getVerticalSize(16),
                                                  width: getHorizontalSize(6),
                                                  margin: getMargin(
                                                      top: 13, bottom: 13))
                                            ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 1, top: 21),
                                                child: Row(children: [
                                                  CustomIconButton(
                                                      height: 43,
                                                      width: 43,
                                                      padding:
                                                          getPadding(all: 8),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillWhiteA70001TL21,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgReply)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 2,
                                                          bottom: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_south_coastal_ride"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .titleSmallWhiteA70001
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.01))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "msg_admire_the_beauty"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmallWhiteA70001_1
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.06))))
                                                          ])),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgBiarrowrightWhiteA7000116x6,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(6),
                                                      margin: getMargin(
                                                          left: 39,
                                                          top: 13,
                                                          bottom: 13))
                                                ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 1, top: 21),
                                                child: Row(children: [
                                                  CustomIconButton(
                                                      height: 43,
                                                      width: 43,
                                                      padding:
                                                          getPadding(all: 8),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillWhiteA70001TL21,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgReply)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 3,
                                                          bottom: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_chola_desha_prayanam"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .titleSmallWhiteA70001
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.01))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 7),
                                                                child: Text(
                                                                    "msg_way_to_cholas_period"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmallWhiteA70001_1
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.06))))
                                                          ])),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgBiarrowrightWhiteA7000116x6,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(6),
                                                      margin: getMargin(
                                                          top: 13, bottom: 13))
                                                ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 2, top: 21),
                                                child: Row(children: [
                                                  CustomIconButton(
                                                      height: 43,
                                                      width: 43,
                                                      padding:
                                                          getPadding(all: 8),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillWhiteA70001TL21,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgReply)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 2,
                                                          bottom: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_south_coastal_ride"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .titleSmallWhiteA70001
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.01))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "msg_admire_the_beauty"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmallWhiteA70001_1
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.06))))
                                                          ])),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgBiarrowrightWhiteA7000116x6,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(6),
                                                      margin: getMargin(
                                                          left: 39,
                                                          top: 13,
                                                          bottom: 13))
                                                ]))
                                          ])),
                                  Spacer(),
                                  CustomElevatedButton(
                                      text: "lbl_settings".tr,
                                      rightIcon: Container(
                                          margin: getMargin(left: 30),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowup)),
                                      buttonStyle: CustomButtonStyles
                                          .fillIndigo400
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                                      double.maxFinite,
                                                      getVerticalSize(93)))),
                                      buttonTextStyle:
                                          theme.textTheme.titleMedium!)
                                ])))
                  ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
