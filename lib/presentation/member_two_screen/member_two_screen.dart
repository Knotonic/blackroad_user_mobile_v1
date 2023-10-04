import 'bloc/member_two_bloc.dart';
import 'models/member_two_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_title.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';

class MemberTwoScreen extends StatelessWidget {
  const MemberTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MemberTwoBloc>(
        create: (context) =>
            MemberTwoBloc(MemberTwoState(memberTwoModelObj: MemberTwoModel()))
              ..add(MemberTwoInitialEvent()),
        child: MemberTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<MemberTwoBloc, MemberTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(57),
                  leadingWidth: 56,
                  leading: AppbarIconbutton3(
                      svgPath: ImageConstant.imgBiarrowrightBlueGray900,
                      margin: getMargin(left: 24, top: 12, bottom: 12),
                      onTap: () {
                        onTapBiarrowright8(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_member".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 40, top: 16, right: 40, bottom: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: getMargin(left: 4, right: 4),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe38x38,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 14, bottom: 10),
                                      child: Text("lbl_harry_potter".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 11),
                                      child: Text("lbl_remove".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrash,
                                      height: getVerticalSize(14),
                                      width: getHorizontalSize(10),
                                      margin: getMargin(
                                          left: 6, top: 14, bottom: 12))
                                ])),
                        Container(
                            margin: getMargin(left: 4, top: 38, right: 4),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe38x38,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 14, bottom: 10),
                                      child: Text("lbl_harry_potter".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 11),
                                      child: Text("lbl_remove".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrash,
                                      height: getVerticalSize(14),
                                      width: getHorizontalSize(10),
                                      margin: getMargin(
                                          left: 6, top: 14, bottom: 12))
                                ])),
                        Container(
                            margin: getMargin(left: 5, top: 38, right: 3),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe38x38,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 14, bottom: 10),
                                      child: Text("lbl_harry_potter".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 11),
                                      child: Text("lbl_remove".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrash,
                                      height: getVerticalSize(14),
                                      width: getHorizontalSize(10),
                                      margin: getMargin(
                                          left: 6, top: 14, bottom: 12))
                                ])),
                        Container(
                            margin: getMargin(left: 6, top: 38, right: 2),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe48x48,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 14, bottom: 10),
                                      child: Text("lbl_harry_potter".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 11),
                                      child: Text("lbl_remove".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrash,
                                      height: getVerticalSize(14),
                                      width: getHorizontalSize(10),
                                      margin: getMargin(
                                          left: 6, top: 14, bottom: 12))
                                ])),
                        Container(
                            margin: getMargin(left: 7, top: 38, right: 1),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe48x48,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 14, bottom: 10),
                                      child: Text("lbl_harry_potter".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 11),
                                      child: Text("lbl_remove".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrash,
                                      height: getVerticalSize(14),
                                      width: getHorizontalSize(10),
                                      margin: getMargin(
                                          left: 6, top: 14, bottom: 12))
                                ])),
                        Container(
                            margin: getMargin(left: 8, top: 38, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe38x38,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8, top: 14, bottom: 10),
                                      child: Text("lbl_harry_potter".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 11),
                                      child: Text("lbl_remove".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrash,
                                      height: getVerticalSize(14),
                                      width: getHorizontalSize(10),
                                      margin: getMargin(
                                          left: 6, top: 14, bottom: 12))
                                ]))
                      ]))));
    });
  }

  /// Navigates to the tripScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the tripScreen.
  onTapBiarrowright8(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tripScreen,
    );
  }
}
