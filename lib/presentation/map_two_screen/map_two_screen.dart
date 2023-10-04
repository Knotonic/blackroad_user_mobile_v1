import '../map_two_screen/widgets/map_two_item_widget.dart';
import 'bloc/map_two_bloc.dart';
import 'models/map_two_item_model.dart';
import 'models/map_two_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class MapTwoScreen extends StatelessWidget {
  const MapTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MapTwoBloc>(
      create: (context) => MapTwoBloc(MapTwoState(
        mapTwoModelObj: MapTwoModel(),
      ))
        ..add(MapTwoInitialEvent()),
      child: MapTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            85,
          ),
          leadingWidth: 57,
          leading: AppbarIconbutton2(
            svgPath: ImageConstant.imgBiarrowright,
            margin: getMargin(
              left: 25,
              top: 11,
              bottom: 12,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "lbl_your_trip".tr,
          ),
        ),
        body: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            top: 3,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.customBorderTL64,
          ),
          child: Container(
            height: getVerticalSize(
              685,
            ),
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.customBorderTL64,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMapsiclemap685x375,
                  height: getVerticalSize(
                    685,
                  ),
                  width: getHorizontalSize(
                    375,
                  ),
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        64,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        64,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: getVerticalSize(
                      648,
                    ),
                    width: getHorizontalSize(
                      337,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              left: 24,
                              top: 44,
                              right: 23,
                              bottom: 7,
                            ),
                            padding: getPadding(
                              left: 30,
                              top: 107,
                              right: 30,
                              bottom: 107,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderTL64,
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup68,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: BlocSelector<MapTwoBloc, MapTwoState,
                                MapTwoModel?>(
                              selector: (state) => state.mapTwoModelObj,
                              builder: (context, mapTwoModelObj) {
                                return ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        153,
                                      ),
                                    );
                                  },
                                  itemCount:
                                      mapTwoModelObj?.mapTwoItemList.length ??
                                          0,
                                  itemBuilder: (context, index) {
                                    MapTwoItemModel model =
                                        mapTwoModelObj?.mapTwoItemList[index] ??
                                            MapTwoItemModel();
                                    return MapTwoItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 18,
                              top: 111,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderTL64,
                            ),
                            child: Container(
                              height: getVerticalSize(
                                32,
                              ),
                              width: getHorizontalSize(
                                19,
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL64,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding: getPadding(
                                        left: 5,
                                        top: 4,
                                        right: 5,
                                        bottom: 4,
                                      ),
                                      decoration: AppDecoration.fill5.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          7,
                                        ),
                                        width: getHorizontalSize(
                                          8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL64,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          23,
                                        ),
                                        width: getHorizontalSize(
                                          19,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL64,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  17,
                                                ),
                                                width: getHorizontalSize(
                                                  18,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      9,
                                                    ),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color:
                                                          appTheme.yellow80001,
                                                      spreadRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      blurRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  23,
                                                ),
                                                width: getHorizontalSize(
                                                  19,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationPrimary,
                                                      height: getVerticalSize(
                                                        23,
                                                      ),
                                                      width: getHorizontalSize(
                                                        19,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgImage,
                                                      height: getSize(
                                                        11,
                                                      ),
                                                      width: getSize(
                                                        11,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin: getMargin(
                                                        left: 4,
                                                        top: 3,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 138,
                              top: 19,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderTL64,
                            ),
                            child: Container(
                              height: getVerticalSize(
                                32,
                              ),
                              width: getHorizontalSize(
                                19,
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL64,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding: getPadding(
                                        left: 5,
                                        top: 4,
                                        right: 5,
                                        bottom: 4,
                                      ),
                                      decoration: AppDecoration.fill5.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          7,
                                        ),
                                        width: getHorizontalSize(
                                          8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL64,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          23,
                                        ),
                                        width: getHorizontalSize(
                                          19,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL64,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  17,
                                                ),
                                                width: getHorizontalSize(
                                                  18,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      9,
                                                    ),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color:
                                                          appTheme.yellow80001,
                                                      spreadRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      blurRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  23,
                                                ),
                                                width: getHorizontalSize(
                                                  19,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationPrimary,
                                                      height: getVerticalSize(
                                                        23,
                                                      ),
                                                      width: getHorizontalSize(
                                                        19,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgImage,
                                                      height: getSize(
                                                        11,
                                                      ),
                                                      width: getSize(
                                                        11,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin: getMargin(
                                                        left: 4,
                                                        top: 3,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 15,
                              top: 296,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderTL64,
                            ),
                            child: Container(
                              height: getVerticalSize(
                                32,
                              ),
                              width: getHorizontalSize(
                                19,
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL64,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding: getPadding(
                                        left: 5,
                                        top: 4,
                                        right: 5,
                                        bottom: 4,
                                      ),
                                      decoration: AppDecoration.fill5.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          7,
                                        ),
                                        width: getHorizontalSize(
                                          8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL64,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          23,
                                        ),
                                        width: getHorizontalSize(
                                          19,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL64,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  17,
                                                ),
                                                width: getHorizontalSize(
                                                  18,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      9,
                                                    ),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color:
                                                          appTheme.yellow80001,
                                                      spreadRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      blurRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  23,
                                                ),
                                                width: getHorizontalSize(
                                                  19,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationPrimary,
                                                      height: getVerticalSize(
                                                        23,
                                                      ),
                                                      width: getHorizontalSize(
                                                        19,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgImage,
                                                      height: getSize(
                                                        11,
                                                      ),
                                                      width: getSize(
                                                        11,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin: getMargin(
                                                        left: 4,
                                                        top: 3,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              right: 136,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderTL64,
                            ),
                            child: Container(
                              height: getVerticalSize(
                                32,
                              ),
                              width: getHorizontalSize(
                                19,
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL64,
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding: getPadding(
                                        left: 5,
                                        top: 4,
                                        right: 5,
                                        bottom: 4,
                                      ),
                                      decoration: AppDecoration.fill5.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          7,
                                        ),
                                        width: getHorizontalSize(
                                          8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL64,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          23,
                                        ),
                                        width: getHorizontalSize(
                                          19,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL64,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  17,
                                                ),
                                                width: getHorizontalSize(
                                                  18,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      9,
                                                    ),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color:
                                                          appTheme.yellow80001,
                                                      spreadRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      blurRadius:
                                                          getHorizontalSize(
                                                        2,
                                                      ),
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  23,
                                                ),
                                                width: getHorizontalSize(
                                                  19,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationPrimary,
                                                      height: getVerticalSize(
                                                        23,
                                                      ),
                                                      width: getHorizontalSize(
                                                        19,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgImage,
                                                      height: getSize(
                                                        11,
                                                      ),
                                                      width: getSize(
                                                        11,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            64,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin: getMargin(
                                                        left: 4,
                                                        top: 3,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        BlocSelector<MapTwoBloc, MapTwoState,
                            TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomTextFormField(
                              width: getHorizontalSize(
                                270,
                              ),
                              controller: searchController,
                              margin: getMargin(
                                left: 1,
                                top: 4,
                              ),
                              contentPadding: getPadding(
                                left: 16,
                                top: 12,
                                right: 16,
                                bottom: 12,
                              ),
                              textStyle: theme.textTheme.titleSmall!,
                              hintText: "msg_search_locations".tr,
                              hintStyle: theme.textTheme.titleSmall!,
                              alignment: Alignment.topLeft,
                              filled: true,
                              fillColor: appTheme.whiteA70001,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA70001,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA70001,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA70001,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA70001,
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              top: 567,
                              right: 9,
                              bottom: 25,
                            ),
                            padding: getPadding(
                              left: 8,
                              top: 10,
                              right: 8,
                              bottom: 10,
                            ),
                            decoration: AppDecoration.fill3.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder28,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    65,
                                  ),
                                  padding: getPadding(
                                    left: 20,
                                    top: 8,
                                    right: 20,
                                    bottom: 8,
                                  ),
                                  decoration: AppDecoration.txtFill1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder16,
                                  ),
                                  child: Text(
                                    "lbl_map".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBluegray900
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    77,
                                  ),
                                  margin: getMargin(
                                    left: 2,
                                  ),
                                  padding: getPadding(
                                    left: 20,
                                    top: 8,
                                    right: 20,
                                    bottom: 8,
                                  ),
                                  decoration: AppDecoration.txtFill2.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder16,
                                  ),
                                  child: Text(
                                    "lbl_hybrid".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeWhiteA70001_1
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    84,
                                  ),
                                  margin: getMargin(
                                    left: 2,
                                  ),
                                  padding: getPadding(
                                    left: 20,
                                    top: 9,
                                    right: 20,
                                    bottom: 9,
                                  ),
                                  decoration: AppDecoration.txtFill2.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder16,
                                  ),
                                  child: Text(
                                    "lbl_satellite".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeWhiteA70001_1
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    78,
                                  ),
                                  margin: getMargin(
                                    left: 2,
                                  ),
                                  padding: getPadding(
                                    left: 20,
                                    top: 9,
                                    right: 20,
                                    bottom: 9,
                                  ),
                                  decoration: AppDecoration.txtFill2.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder16,
                                  ),
                                  child: Text(
                                    "lbl_terrain".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeWhiteA70001_1
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomIconButton(
                          height: 50,
                          width: 50,
                          padding: getPadding(
                            all: 17,
                          ),
                          decoration: IconButtonStyleHelper.fillWhiteA70001,
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgComputer,
                          ),
                        ),
                        CustomIconButton(
                          height: 50,
                          width: 50,
                          margin: getMargin(
                            bottom: 111,
                          ),
                          padding: getPadding(
                            all: 17,
                          ),
                          decoration: IconButtonStyleHelper.fillWhiteA70001,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgLocationWhiteA70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
