import 'bloc/vehicle_list_bloc.dart';
import 'models/vehicle_list_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_title.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_floating_button.dart';

class VehicleListScreen extends StatelessWidget {
  const VehicleListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VehicleListBloc>(
        create: (context) => VehicleListBloc(
            VehicleListState(vehicleListModelObj: VehicleListModel()))
          ..add(VehicleListInitialEvent()),
        child: VehicleListScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<VehicleListBloc, VehicleListState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(56),
                  leadingWidth: 57,
                  leading: AppbarIconbutton3(
                      svgPath: ImageConstant.imgBiarrowrightBlueGray900,
                      margin: getMargin(left: 25, top: 12, bottom: 12),
                      onTap: () {
                        onTapBiarrowright2(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_vehicle_detail".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 1, bottom: 1),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: getPadding(right: 24),
                                child: SizedBox(
                                    height: getVerticalSize(34),
                                    child: VerticalDivider(
                                        width: getHorizontalSize(4),
                                        thickness: getVerticalSize(4),
                                        color: appTheme.gray900,
                                        indent: getHorizontalSize(18))))),
                        Container(
                            margin: getMargin(left: 25, top: 19, right: 24),
                            padding: getPadding(
                                left: 19, top: 14, right: 19, bottom: 14),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGlobe48x48,
                                      height: getSize(43),
                                      width: getSize(43)),
                                  Padding(
                                      padding: getPadding(
                                          left: 22, top: 5, bottom: 5),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                                "msg_royal_enfield_thunderbird_350"
                                                    .tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.labelLarge!
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.06))),
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text("lbl_tn64l9357".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.06))))
                                          ])),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowupGray900,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin: getMargin(
                                          left: 39, top: 13, bottom: 12))
                                ])),
                        Container(
                            margin: getMargin(
                                left: 24, top: 12, right: 25, bottom: 12),
                            padding: getPadding(
                                left: 18, top: 14, right: 18, bottom: 14),
                            decoration: AppDecoration.fill.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGlobe48x48,
                                        height: getSize(43),
                                        width: getSize(43)),
                                    Padding(
                                        padding: getPadding(
                                            left: 22, top: 5, bottom: 5),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "msg_royal_enfield_thunderbird_350"
                                                      .tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge!
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.06))),
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text(
                                                      "lbl_tn64l9357".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.06))))
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowupGray900,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(
                                            left: 39, top: 13, bottom: 12))
                                  ]),
                                  Padding(
                                      padding: getPadding(
                                          top: 27, right: 12, bottom: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_vehicle_number".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme
                                                          .textTheme.labelLarge!
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.06))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_owner_name".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge!
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.06)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "msg_registration_authority"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge!
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.06)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Text(
                                                          "lbl_vehicle_class"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge!
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.06)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_fuel_type".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge!
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.06)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_vehicle_age".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge!
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.06)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 7),
                                                      child: Text(
                                                          "lbl_vehicle_status"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .labelLarge!
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.06))))
                                                ]),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_tn64l9357".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodySmall!
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.06))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Text(
                                                              "msg_punitha_arockiaraj"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.06)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text(
                                                              "msg_madurai_central"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.06)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Text(
                                                              "msg_m_cycle_scooter_2wn"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.06)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text(
                                                              "lbl_petrol".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.06)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Text(
                                                              "msg_6_years_3_months"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.06)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text(
                                                              "lbl_active".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.06))))
                                                    ]))
                                          ]))
                                ]))
                      ])),
              floatingActionButton: CustomFloatingButton(
                  height: 50,
                  width: 50,
                  backgroundColor: theme.colorScheme.primary,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgGrid,
                      height: getVerticalSize(25.0),
                      width: getHorizontalSize(25.0)))));
    });
  }

  /// Navigates to the tripOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the tripOneScreen.
  onTapBiarrowright2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tripOneScreen,
    );
  }
}
