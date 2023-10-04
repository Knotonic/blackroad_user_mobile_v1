import 'bloc/frame_488_bloc.dart';
import 'models/frame_488_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';
import 'package:blackroad_v1/presentation/profile_page_three_bottomsheet/profile_page_three_bottomsheet.dart';

class Frame488Screen extends StatelessWidget {
  const Frame488Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame488Bloc>(
        create: (context) =>
            Frame488Bloc(Frame488State(frame488ModelObj: Frame488Model()))
              ..add(Frame488InitialEvent()),
        child: Frame488Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Frame488Bloc, Frame488State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: getHorizontalSize(376),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapColumnyouritine(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 1, top: 43),
                                child: Column(
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
                                                  style: CustomTextStyles
                                                      .titleMediumBluegray900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.02)))),
                                          actions: [
                                            AppbarImage(
                                                height: getSize(18),
                                                width: getSize(18),
                                                svgPath: ImageConstant
                                                    .imgArrowupBlueGray900,
                                                margin: getMargin(
                                                    left: 24,
                                                    right: 24,
                                                    bottom: 2))
                                          ]),
                                      Container(
                                          margin: getMargin(
                                              left: 33, top: 39, right: 43),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 43,
                                                    width: 43,
                                                    padding: getPadding(all: 8),
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
                                                                  .titleSmallBluegray900
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
                                                                      .bodySmallBluegray900
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.06))))
                                                        ])),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBiarrowrightBlueGray90016x6,
                                                    height: getVerticalSize(16),
                                                    width: getHorizontalSize(6),
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 13,
                                                        bottom: 13))
                                              ])),
                                      Container(
                                          margin: getMargin(
                                              left: 33, top: 38, right: 43),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 43,
                                                    width: 43,
                                                    padding: getPadding(all: 8),
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
                                                                  .titleSmallBluegray900
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
                                                                      .bodySmallBluegray900
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.06))))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBiarrowrightBlueGray90016x6,
                                                    height: getVerticalSize(16),
                                                    width: getHorizontalSize(6),
                                                    margin: getMargin(
                                                        top: 13, bottom: 13))
                                              ])),
                                      Container(
                                          margin: getMargin(
                                              left: 34, top: 38, right: 42),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 43,
                                                    width: 43,
                                                    padding: getPadding(all: 8),
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
                                                                  .titleSmallBluegray900
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
                                                                      .bodySmallBluegray900
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.06))))
                                                        ])),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBiarrowrightBlueGray90016x6,
                                                    height: getVerticalSize(16),
                                                    width: getHorizontalSize(6),
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 13,
                                                        bottom: 13))
                                              ])),
                                      Container(
                                          margin: getMargin(
                                              left: 34, top: 38, right: 42),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 43,
                                                    width: 43,
                                                    padding: getPadding(all: 8),
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
                                                                  .titleSmallBluegray900
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
                                                                      .bodySmallBluegray900
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.06))))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBiarrowrightBlueGray90016x6,
                                                    height: getVerticalSize(16),
                                                    width: getHorizontalSize(6),
                                                    margin: getMargin(
                                                        top: 13, bottom: 13))
                                              ]))
                                    ]))),
                        SizedBox(
                            height: getVerticalSize(346),
                            width: getHorizontalSize(327)),
                        Spacer()
                      ])),
              bottomNavigationBar: CustomElevatedButton(
                  text: "lbl_settings".tr,
                  margin: getMargin(left: 1),
                  rightIcon: Container(
                      margin: getMargin(left: 30),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgArrowup)),
                  buttonStyle: CustomButtonStyles.fillIndigo400.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, getVerticalSize(93)))),
                  buttonTextStyle: theme.textTheme.titleMedium!,
                  onTap: () {
                    onTapSettings(context);
                  })));
    });
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [ProfilePageThreeBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapSettings(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfilePageThreeBottomsheet.builder(context),
        isScrollControlled: true);
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
