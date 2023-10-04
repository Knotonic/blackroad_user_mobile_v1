import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_title.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
        create: (context) => NotificationBloc(
            NotificationState(notificationModelObj: NotificationModel()))
          ..add(NotificationInitialEvent()),
        child: NotificationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(57),
                  leadingWidth: 57,
                  leading: AppbarIconbutton3(
                      svgPath: ImageConstant.imgBiarrowrightBlueGray900,
                      margin: getMargin(left: 25, top: 12, bottom: 12),
                      onTap: () {
                        onTapBiarrowright7(context);
                      }),
                  title: AppbarTitle(
                      text: "lbl_notification".tr,
                      margin: getMargin(left: 58))),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 23, top: 1, right: 23, bottom: 1),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: getMargin(left: 2),
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Container(
                                  width: getHorizontalSize(189),
                                  margin: getMargin(left: 8, top: 5, bottom: 1),
                                  child: Text("msg_harry_potter_requested".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelLargeBluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))
                            ])),
                        Container(
                            margin: getMargin(left: 2, top: 12),
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Container(
                                  width: getHorizontalSize(158),
                                  margin: getMargin(left: 8, top: 5, bottom: 3),
                                  child: Text("msg_lord_voldermort".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelLargeBluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))
                            ])),
                        Container(
                            margin: getMargin(left: 2, top: 12),
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Container(
                                  width: getHorizontalSize(196),
                                  margin: getMargin(left: 8, top: 5, bottom: 3),
                                  child: Text("msg_hermoine_changed".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelLargeBluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))
                            ])),
                        Container(
                            margin: getMargin(left: 2, top: 12),
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Container(
                                  width: getHorizontalSize(183),
                                  margin: getMargin(left: 8, top: 5, bottom: 1),
                                  child: Text("msg_draco_malfoy_added".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelLargeBluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))
                            ])),
                        Container(
                            margin: getMargin(left: 2, top: 12),
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGlobe48x48,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Container(
                                  width: getHorizontalSize(189),
                                  margin: getMargin(left: 8, top: 5, bottom: 1),
                                  child: Text("msg_harry_potter_requested".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelLargeBluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))
                            ])),
                        Container(
                            margin: getMargin(left: 2, top: 12),
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGlobe48x48,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Container(
                                  width: getHorizontalSize(189),
                                  margin: getMargin(left: 8, top: 5, bottom: 1),
                                  child: Text("msg_harry_potter_requested".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelLargeBluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))
                            ])),
                        Container(
                            margin: getMargin(left: 2, top: 12),
                            padding: getPadding(
                                left: 20, top: 15, right: 20, bottom: 15),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(40),
                                  width: getSize(40)),
                              Container(
                                  width: getHorizontalSize(189),
                                  margin: getMargin(left: 8, top: 5, bottom: 1),
                                  child: Text("msg_harry_potter_requested".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelLargeBluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06))))
                            ])),
                        Container(
                            margin: getMargin(left: 2, top: 12, bottom: 5),
                            padding: getPadding(left: 20, right: 20),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe38x38,
                                      height: getSize(40),
                                      width: getSize(40),
                                      margin: getMargin(top: 15)),
                                  Container(
                                      width: getHorizontalSize(189),
                                      margin: getMargin(
                                          left: 8, top: 20, bottom: 1),
                                      child: Text(
                                          "msg_harry_potter_requested".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBluegray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.06))))
                                ]))
                      ]))));
    });
  }

  /// Navigates to the tripScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the tripScreen.
  onTapBiarrowright7(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tripScreen,
    );
  }
}
