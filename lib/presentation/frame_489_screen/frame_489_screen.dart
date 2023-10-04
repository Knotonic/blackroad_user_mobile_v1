import 'bloc/frame_489_bloc.dart';
import 'models/frame_489_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';

class Frame489Screen extends StatelessWidget {
  const Frame489Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame489Bloc>(
        create: (context) =>
            Frame489Bloc(Frame489State(frame489ModelObj: Frame489Model()))
              ..add(Frame489InitialEvent()),
        child: Frame489Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Frame489Bloc, Frame489State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: Container(
                  width: getHorizontalSize(376),
                  padding: getPadding(left: 24, top: 38, right: 24, bottom: 38),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapColumnyouritine(context);
                            },
                            child: Padding(
                                padding: getPadding(top: 4),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomAppBar(
                                          height: getVerticalSize(20),
                                          title: Padding(
                                              padding: getPadding(left: 24),
                                              child: Text(
                                                  "lbl_your_itinerary".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.02)))),
                                          actions: [
                                            AppbarImage(
                                                height: getSize(18),
                                                width: getSize(18),
                                                svgPath:
                                                    ImageConstant.imgArrowup,
                                                margin: getMargin(
                                                    left: 24,
                                                    right: 24,
                                                    bottom: 2))
                                          ]),
                                      Container(
                                          margin: getMargin(
                                              left: 9, top: 39, right: 19),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
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
                                                        top: 2, bottom: 1),
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
                                                                          getHorizontalSize(
                                                                              0.01))),
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
                                                    height: getVerticalSize(16),
                                                    width: getHorizontalSize(6),
                                                    margin: getMargin(
                                                        top: 13, bottom: 13))
                                              ])),
                                      Container(
                                          margin: getMargin(
                                              left: 9, top: 38, right: 19),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
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
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallWhiteA70001
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.01))),
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
                                                    height: getVerticalSize(16),
                                                    width: getHorizontalSize(6),
                                                    margin: getMargin(
                                                        top: 13, bottom: 13))
                                              ])),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 10, top: 38, right: 18),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 43,
                                                        width: 43,
                                                        padding:
                                                            getPadding(all: 8),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillWhiteA70001TL21,
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgReply)),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 2, bottom: 1),
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
                                                                          top:
                                                                              8),
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
                                                                              letterSpacing: getHorizontalSize(0.06))))
                                                            ])),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBiarrowrightWhiteA7000116x6,
                                                        height:
                                                            getVerticalSize(16),
                                                        width:
                                                            getHorizontalSize(
                                                                6),
                                                        margin: getMargin(
                                                            top: 13,
                                                            bottom: 13))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 10, top: 38, right: 18),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 43,
                                                        width: 43,
                                                        padding:
                                                            getPadding(all: 8),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillWhiteA70001TL21,
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
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
                                                                          top:
                                                                              7),
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
                                                                              letterSpacing: getHorizontalSize(0.06))))
                                                            ])),
                                                    Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBiarrowrightWhiteA7000116x6,
                                                        height:
                                                            getVerticalSize(16),
                                                        width:
                                                            getHorizontalSize(
                                                                6),
                                                        margin: getMargin(
                                                            top: 13,
                                                            bottom: 13))
                                                  ])))
                                    ]))),
                        SizedBox(
                            height: getVerticalSize(346),
                            width: getHorizontalSize(327)),
                        Spacer()
                      ])),
              bottomNavigationBar: Container(
                  margin: getMargin(left: 25, right: 24, bottom: 38),
                  decoration: AppDecoration.fill8.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL36),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_settings".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleMedium!.copyWith(
                                letterSpacing: getHorizontalSize(0.02))),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowup,
                            height: getSize(18),
                            width: getSize(18),
                            margin: getMargin(bottom: 2))
                      ]))));
    });
  }

  /// Navigates to the profilePageTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the profilePageTwoScreen.
  onTapColumnyouritine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageTwoScreen,
    );
  }
}
