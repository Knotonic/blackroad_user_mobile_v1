import 'bloc/trip_details_bloc.dart';
import 'models/trip_details_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class TripDetailsScreen extends StatelessWidget {
  const TripDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TripDetailsBloc>(
        create: (context) => TripDetailsBloc(
            TripDetailsState(tripDetailsModelObj: TripDetailsModel()))
          ..add(TripDetailsInitialEvent()),
        child: TripDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TripDetailsBloc, TripDetailsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: appTheme.whiteA70001,
              appBar: CustomAppBar(
                  height: getVerticalSize(56),
                  leadingWidth: 375,
                  leading: Container(
                      height: getSize(32),
                      width: getSize(32),
                      margin:
                          getMargin(left: 24, top: 12, right: 319, bottom: 12),
                      child: Stack(alignment: Alignment.center, children: [
                        AppbarImage(
                            height: getSize(32),
                            width: getSize(32),
                            svgPath: ImageConstant.imgGroup458),
                        AppbarImage(
                            height: getSize(16),
                            width: getSize(16),
                            svgPath: ImageConstant.imgBiarrowrightBlueGray900,
                            margin: getMargin(all: 8))
                      ]))),
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA70001,
                      image: DecorationImage(
                          image: AssetImage(
                              ImageConstant.imgUnsplash3vk6urf2ve8323x375),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: getPadding(top: 23, bottom: 23),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            GestureDetector(
                                onTap: () {
                                  onTapColumncholadesh(context);
                                },
                                child: Container(
                                    margin: getMargin(left: 24, right: 18),
                                    padding: getPadding(
                                        left: 7, top: 23, right: 7, bottom: 23),
                                    decoration: AppDecoration.fill4.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 11, right: 21),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "msg_chola_desha_prayanam"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleMedium!
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.02))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowdown,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        margin: getMargin(
                                                            bottom: 2))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 17,
                                                      right: 21),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder10),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCalendar,
                                                                      height:
                                                                          getVerticalSize(
                                                                              20),
                                                                      width: getHorizontalSize(
                                                                          18)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              10,
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              1),
                                                                      child: RichText(
                                                                          text: TextSpan(children: [
                                                                            TextSpan(
                                                                                text: "lbl_oct".tr,
                                                                                style: CustomTextStyles.labelLargeWhiteA70001.copyWith(letterSpacing: getHorizontalSize(0.06))),
                                                                            TextSpan(
                                                                                text: "lbl_13_1998".tr,
                                                                                style: CustomTextStyles.labelLargeWhiteA70001.copyWith(letterSpacing: getHorizontalSize(0.06)))
                                                                          ]),
                                                                          textAlign: TextAlign.left))
                                                                ])),
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder10),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgDays,
                                                                      height:
                                                                          getVerticalSize(
                                                                              20),
                                                                      width: getHorizontalSize(
                                                                          18)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              10,
                                                                          top:
                                                                              4),
                                                                      child: Text(
                                                                          "lbl_2_days"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: CustomTextStyles
                                                                              .labelLargeWhiteA70001_1
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.06))))
                                                                ])),
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder10),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgDistanceWhiteA70001,
                                                                      height:
                                                                          getVerticalSize(
                                                                              20),
                                                                      width: getHorizontalSize(
                                                                          18)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              10,
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_806_kms"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: CustomTextStyles
                                                                              .labelLargeWhiteA70001_1
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.06))))
                                                                ]))
                                                      ]))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 11, top: 19),
                                              child: Text("lbl_description".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallWhiteA70001
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.01)))),
                                          Container(
                                              width: getHorizontalSize(308),
                                              margin:
                                                  getMargin(left: 11, top: 13),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "msg_the_emerald_green4"
                                                                .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001),
                                                    TextSpan(
                                                        text:
                                                            "msg_the_emerald_green5"
                                                                .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001),
                                                    TextSpan(
                                                        text: " ",
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001),
                                                    TextSpan(
                                                        text:
                                                            "msg_ha_giang_s_mountain"
                                                                .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001),
                                                    TextSpan(
                                                        text: " ",
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001),
                                                    TextSpan(
                                                        text:
                                                            "msg_province_prime_territory"
                                                                .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001),
                                                    TextSpan(
                                                        text: " ",
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001),
                                                    TextSpan(
                                                        text:
                                                            "msg_either_motorbike"
                                                                .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA70001)
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          CustomElevatedButton(
                                              text: "lbl_add_trip".tr,
                                              margin: getMargin(
                                                  left: 11,
                                                  top: 9,
                                                  right: 21,
                                                  bottom: 1),
                                              buttonStyle: CustomButtonStyles
                                                  .fillWhiteA70001
                                                  .copyWith(
                                                      fixedSize:
                                                          MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  double
                                                                      .maxFinite,
                                                                  getVerticalSize(
                                                                      40)))),
                                              buttonTextStyle:
                                                  theme.textTheme.titleSmall!)
                                        ])))
                          ]))),
              bottomNavigationBar: Container(
                  margin: getMargin(left: 34, right: 45, bottom: 31),
                  decoration: AppDecoration.fill3
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder28),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomElevatedButton(
                            text: "lbl_detail".tr,
                            buttonStyle: CustomButtonStyles.fillWhiteA70001TL16
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(73),
                                            getVerticalSize(36)))),
                            buttonTextStyle:
                                CustomTextStyles.labelLargeBluegray900),
                        Padding(
                            padding: getPadding(left: 20, top: 11, bottom: 9),
                            child: Text("lbl_route".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeWhiteA70001_1
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.06)))),
                        Padding(
                            padding: getPadding(left: 40, top: 12, bottom: 8),
                            child: Text("lbl_gallery".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeWhiteA70001_1
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.06)))),
                        Padding(
                            padding: getPadding(left: 40, top: 11, bottom: 9),
                            child: Text("lbl_members".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeWhiteA70001_1
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.06))))
                      ]))));
    });
  }

  /// Navigates to the tripDetailsTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the tripDetailsTwoScreen.
  onTapColumncholadesh(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tripDetailsTwoScreen,
    );
  }
}
