import 'bloc/trip_details_one_bloc.dart';
import 'models/trip_details_one_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class TripDetailsOneScreen extends StatelessWidget {
  const TripDetailsOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TripDetailsOneBloc>(
        create: (context) => TripDetailsOneBloc(
            TripDetailsOneState(tripDetailsOneModelObj: TripDetailsOneModel()))
          ..add(TripDetailsOneInitialEvent()),
        child: TripDetailsOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TripDetailsOneBloc, TripDetailsOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA70001,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: getVerticalSize(323),
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUnsplash3vk6urf2ve8323x375,
                                      height: getVerticalSize(323),
                                      width: getHorizontalSize(375),
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          padding:
                                              getPadding(top: 17, bottom: 17),
                                          decoration: AppDecoration.fill2,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomAppBar(
                                                    height: getVerticalSize(32),
                                                    leadingWidth: 56,
                                                    leading: AppbarIconbutton1(
                                                        svgPath: ImageConstant
                                                            .imgBiarrowrightWhiteA70001,
                                                        margin:
                                                            getMargin(left: 24),
                                                        onTap: () {
                                                          onTapBiarrowright(
                                                              context);
                                                        }),
                                                    title: Padding(
                                                        padding:
                                                            getPadding(left: 8),
                                                        child: Text(
                                                            "lbl_back".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .titleMediumPoppins))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 24, top: 79),
                                                    child: Text(
                                                        "msg_chola_desham_prayanam"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleLarge)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 24, top: 7),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "msg_the_way_to_the_cholas"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .labelLargeWhiteA70001_1
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.06))),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrow3,
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              width:
                                                                  getHorizontalSize(
                                                                      25),
                                                              margin: getMargin(
                                                                  left: 11,
                                                                  top: 5,
                                                                  bottom: 8))
                                                        ])),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 29,
                                                            top: 101,
                                                            right: 29,
                                                            bottom: 6),
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
                                                                                ImageConstant.imgCalendar,
                                                                            height: getVerticalSize(20),
                                                                            width: getHorizontalSize(18)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 10,
                                                                                top: 3,
                                                                                bottom: 1),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "lbl_oct".tr, style: CustomTextStyles.labelLargeWhiteA70001.copyWith(letterSpacing: getHorizontalSize(0.06))),
                                                                                  TextSpan(text: "lbl_13_1998".tr, style: CustomTextStyles.labelLargeWhiteA70001.copyWith(letterSpacing: getHorizontalSize(0.06)))
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
                                                                                ImageConstant.imgDays,
                                                                            height: getVerticalSize(20),
                                                                            width: getHorizontalSize(18)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 10, top: 4),
                                                                            child: Text("lbl_2_days".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(letterSpacing: getHorizontalSize(0.06))))
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
                                                                                ImageConstant.imgDistanceWhiteA70001,
                                                                            height: getVerticalSize(20),
                                                                            width: getHorizontalSize(18)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 10,
                                                                                top: 3,
                                                                                bottom: 1),
                                                                            child: Text("lbl_806_kms".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(letterSpacing: getHorizontalSize(0.06))))
                                                                      ]))
                                                            ])))
                                              ])))
                                ])),
                        Container(
                            padding: getPadding(left: 24, right: 24),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 28),
                                      child: Text("lbl_description".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleSmall!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.01)))),
                                  Container(
                                      width: getHorizontalSize(322),
                                      margin: getMargin(top: 13),
                                      child: Text("msg_the_emerald_green2".tr,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallMedium
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.04)))),
                                  Padding(
                                      padding: getPadding(top: 33),
                                      child: Text("msg_route_on_the_trip".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleSmall!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.01)))),
                                  Padding(
                                      padding: getPadding(top: 12),
                                      child: Row(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomElevatedButton(
                                                  text: "lbl_chennai".tr,
                                                  rightIcon: Container(
                                                      margin:
                                                          getMargin(left: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDistancePrimarycontainer)),
                                                  buttonStyle: CustomButtonStyles
                                                      .fillOrange100
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  getHorizontalSize(
                                                                      126),
                                                                  getVerticalSize(
                                                                      44)))),
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallPrimaryContainer),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 45),
                                                      child: SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  33),
                                                          child: VerticalDivider(
                                                              width:
                                                                  getHorizontalSize(
                                                                      4),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      4),
                                                              color: appTheme
                                                                  .blueGray900)))),
                                              CustomElevatedButton(
                                                  text: "lbl_tanjore".tr,
                                                  rightIcon: Container(
                                                      margin:
                                                          getMargin(left: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDistancePrimarycontainer)),
                                                  buttonStyle: CustomButtonStyles
                                                      .fillOrange100
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  getHorizontalSize(
                                                                      121),
                                                                  getVerticalSize(
                                                                      44)))),
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallPrimaryContainer),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 45),
                                                      child: SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          child: VerticalDivider(
                                                              width:
                                                                  getHorizontalSize(
                                                                      4),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      4),
                                                              color: appTheme
                                                                  .blueGray900)))),
                                              Container(
                                                  height: getVerticalSize(44),
                                                  width: getHorizontalSize(112),
                                                  decoration: BoxDecoration(
                                                      color: appTheme.orange100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  8))))
                                            ]),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgLocationtile,
                                            height: getVerticalSize(166),
                                            width: getHorizontalSize(19),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(9)),
                                            margin: getMargin(
                                                left: 28, top: 22, bottom: 22)),
                                        Padding(
                                            padding: getPadding(bottom: 89),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomElevatedButton(
                                                      text: "lbl_madurai".tr,
                                                      rightIcon: Container(
                                                          margin: getMargin(
                                                              left: 10),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgDistancePrimarycontainer)),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillOrange100
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      getHorizontalSize(
                                                                          126),
                                                                      getVerticalSize(
                                                                          44)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .titleSmallPrimaryContainer),
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 45),
                                                      child: SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  33),
                                                          child: VerticalDivider(
                                                              width:
                                                                  getHorizontalSize(
                                                                      4),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      4),
                                                              color: appTheme
                                                                  .blueGray900))),
                                                  CustomElevatedButton(
                                                      text: "lbl_srilanka".tr,
                                                      margin:
                                                          getMargin(right: 2),
                                                      rightIcon: Container(
                                                          margin: getMargin(
                                                              left: 10),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgDistancePrimarycontainer)),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillOrange100
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      getHorizontalSize(
                                                                          124),
                                                                      getVerticalSize(
                                                                          44)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .titleSmallPrimaryContainer)
                                                ]))
                                      ]))
                                ]))
                      ])),
              bottomNavigationBar: Container(
                  margin: getMargin(left: 24, right: 24, bottom: 12),
                  decoration: AppDecoration.fill3,
                  child: Container(
                      decoration: AppDecoration.fill3,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(top: 1, bottom: 3),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_chola_desham_prayanam".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallWhiteA70001
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.01))),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("msg_oct_13_21_30_am".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallWhiteA70001_1
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.06))))
                                    ])),
                            CustomElevatedButton(
                                text: "lbl_join".tr,
                                buttonStyle: CustomButtonStyles.fillWhiteA70001
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(getHorizontalSize(97),
                                                    getVerticalSize(40)))),
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallBluegray900)
                          ])))));
    });
  }

  /// Navigates to the homeOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homeOneScreen.
  onTapBiarrowright(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeOneScreen,
    );
  }
}
