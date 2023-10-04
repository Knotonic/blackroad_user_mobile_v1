import 'bloc/profile_page_one_bloc.dart';
import 'models/profile_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class ProfilePageOneScreen extends StatelessWidget {
  const ProfilePageOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilePageOneBloc>(
        create: (context) => ProfilePageOneBloc(
            ProfilePageOneState(profilePageOneModelObj: ProfilePageOneModel()))
          ..add(ProfilePageOneInitialEvent()),
        child: ProfilePageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfilePageOneBloc, ProfilePageOneState>(
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
                        onTapArrowleft(context);
                      }),
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
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(top: 63),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: theme.colorScheme.onError,
                                    width: getHorizontalSize(1)),
                                borderRadius: BorderRadiusStyle.circleBorder83),
                            child: Container(
                                height: getSize(166),
                                width: getSize(166),
                                padding: getPadding(all: 13),
                                decoration: AppDecoration.outline.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder83),
                                child: Stack(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUnsplashhh3vid0r0rc,
                                      height: getSize(136),
                                      width: getSize(136),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(68)),
                                      alignment: Alignment.center)
                                ]))),
                        Padding(
                            padding: getPadding(top: 21),
                            child: Text("msg_punitha_arockiararaj".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleSmall!.copyWith(
                                    letterSpacing: getHorizontalSize(0.01)))),
                        Padding(
                            padding: getPadding(top: 9),
                            child: Text("msg_travel_enthusiastic".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodySmall!.copyWith(
                                    letterSpacing: getHorizontalSize(0.06)))),
                        Padding(
                            padding: getPadding(left: 25, top: 43),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomElevatedButton(
                                      text: "lbl_3_trips".tr,
                                      leftIcon: Container(
                                          margin: getMargin(right: 8),
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgCar)),
                                      buttonStyle: CustomButtonStyles
                                          .fillOrange100
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                                      getHorizontalSize(153),
                                                      getVerticalSize(40)))),
                                      buttonTextStyle: CustomTextStyles
                                          .titleSmallPrimaryContainer),
                                  CustomElevatedButton(
                                      text: "lbl_245_friends".tr,
                                      margin: getMargin(left: 20),
                                      leftIcon: Container(
                                          margin: getMargin(right: 8),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgPeople)),
                                      buttonStyle: CustomButtonStyles
                                          .fillTeal100
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                                      getHorizontalSize(153),
                                                      getVerticalSize(40)))),
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallOnPrimary)
                                ])),
                        GestureDetector(
                            onTap: () {
                              onTapColumnmyinforma(context);
                            },
                            child: Container(
                                margin: getMargin(top: 61),
                                decoration: AppDecoration.fill3.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL36),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 24, top: 34, right: 24),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_my_information".tr,
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
                                      Container(
                                          margin: getMargin(top: 35),
                                          decoration: AppDecoration.fill7
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL36),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 23,
                                                        top: 34,
                                                        right: 24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "lbl_your_itinerary"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleMedium!
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.02))),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowup,
                                                              height:
                                                                  getSize(18),
                                                              width:
                                                                  getSize(18),
                                                              margin: getMargin(
                                                                  bottom: 2))
                                                        ])),
                                                Container(
                                                    width: double.maxFinite,
                                                    margin: getMargin(top: 34),
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 34,
                                                        right: 24,
                                                        bottom: 34),
                                                    decoration: AppDecoration
                                                        .fill8
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL36),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          4),
                                                              child: Text(
                                                                  "lbl_settings"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleMedium!
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.02)))),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowup,
                                                              height:
                                                                  getSize(18),
                                                              width:
                                                                  getSize(18),
                                                              margin: getMargin(
                                                                  bottom: 7))
                                                        ]))
                                              ]))
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
  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the profilePageTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the profilePageTwoScreen.
  onTapColumnmyinforma(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageTwoScreen,
    );
  }
}
