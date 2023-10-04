import 'bloc/profile_page_two_bloc.dart';
import 'models/profile_page_two_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class ProfilePageTwoScreen extends StatelessWidget {
  const ProfilePageTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilePageTwoBloc>(
        create: (context) => ProfilePageTwoBloc(
            ProfilePageTwoState(profilePageTwoModelObj: ProfilePageTwoModel()))
          ..add(ProfilePageTwoInitialEvent()),
        child: ProfilePageTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfilePageTwoBloc, ProfilePageTwoState>(
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
                        onTapArrowleft1(context);
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
                            margin: getMargin(right: 1),
                            padding: getPadding(
                                left: 23, top: 34, right: 23, bottom: 34),
                            decoration: AppDecoration.fill3.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL36),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 1),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_my_information".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.titleMedium!
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.02))),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownWhiteA70001,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(bottom: 2))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 1, top: 27, bottom: 27),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_username".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallOnErrorMedium
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.04))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_mappiy".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallWhiteA70001Medium
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.04))))
                                                ]),
                                            Padding(
                                                padding: getPadding(top: 21),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_email_address"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallOnErrorMedium
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.04))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text(
                                                              "msg_madhurapandiyan"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallWhiteA70001Medium
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.04))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 21),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_mobile_number"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallOnErrorMedium
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.04))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8),
                                                          child: Text(
                                                              "lbl_9489109455"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallWhiteA70001Medium
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.04))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 22),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_date_of_birth"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallOnErrorMedium
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.04))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8),
                                                          child: Text(
                                                              "lbl_13_october_1998"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallWhiteA70001Medium
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.04))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_gender".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallOnErrorMedium
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.04))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8),
                                                          child: Text(
                                                              "lbl_male".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallWhiteA70001Medium
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.04))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_location".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleSmallOnErrorMedium
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.04))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: Text(
                                                              "lbl_madurai".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallWhiteA70001Medium
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.04))))
                                                    ]))
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                            onTap: () {
                              onTapColumnyouritine(context);
                            },
                            child: Container(
                                decoration: AppDecoration.fill7.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL36),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 23, top: 34, right: 24),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_your_itinerary".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.titleMedium!
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.02))),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowup,
                                                    height: getSize(18),
                                                    width: getSize(18),
                                                    margin:
                                                        getMargin(bottom: 2))
                                              ])),
                                      CustomElevatedButton(
                                          text: "lbl_settings".tr,
                                          margin: getMargin(top: 34),
                                          rightIcon: Container(
                                              margin: getMargin(left: 30),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowup)),
                                          buttonStyle: CustomButtonStyles
                                              .fillIndigo400
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .all<Size>(Size(
                                                              double.maxFinite,
                                                              getVerticalSize(
                                                                  93)))),
                                          buttonTextStyle:
                                              theme.textTheme.titleMedium!)
                                    ]))))
                  ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the frame488Screen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the frame488Screen.
  onTapColumnyouritine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame488Screen,
    );
  }
}
