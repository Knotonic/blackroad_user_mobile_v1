import '../home_one_screen/widgets/sliderunsplashv_item_widget.dart';
import 'bloc/home_one_bloc.dart';
import 'models/home_one_model.dart';
import 'models/sliderunsplashv_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_image.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeOneScreen extends StatelessWidget {
  const HomeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeOneBloc>(
        create: (context) =>
            HomeOneBloc(HomeOneState(homeOneModelObj: HomeOneModel()))
              ..add(HomeOneInitialEvent()),
        child: HomeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 73,
                leading: AppbarImage(
                    height: getSize(48),
                    width: getSize(48),
                    imagePath: ImageConstant.imgGlobe48x48,
                    margin: getMargin(left: 25, top: 4, bottom: 4)),
                title: Padding(
                    padding: getPadding(left: 16),
                    child: Text("lbl_hi_punitha".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleSmall!
                            .copyWith(letterSpacing: getHorizontalSize(0.01)))),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(26),
                      width: getHorizontalSize(22),
                      svgPath: ImageConstant.imgFrame4,
                      margin:
                          getMargin(left: 23, top: 12, right: 23, bottom: 18))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 24),
                    child: Padding(
                        padding: getPadding(left: 1, right: 23, bottom: 7),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(257),
                                  width: getHorizontalSize(351),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                margin: getMargin(bottom: 7),
                                                decoration: AppDecoration.fill1
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 37,
                                                              right: 30),
                                                          child: Text(
                                                              "msg_create_your_trips"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleLargePrimaryContainer)),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  178),
                                                          margin: getMargin(
                                                              top: 6,
                                                              right: 21),
                                                          child: Text(
                                                              "msg_start_creating_your"
                                                                  .tr,
                                                              maxLines: 3,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .bodySmallPrimaryContainer)),
                                                      CustomElevatedButton(
                                                          text: "lbl_create".tr,
                                                          margin:
                                                              getMargin(top: 5),
                                                          rightIcon: Container(
                                                              margin: getMargin(
                                                                  left: 26),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrow3)),
                                                          buttonStyle: CustomButtonStyles
                                                              .fillPrimaryBR12
                                                              .copyWith(
                                                                  fixedSize: MaterialStateProperty.all<Size>(Size(
                                                                      getHorizontalSize(
                                                                          153),
                                                                      getVerticalSize(
                                                                          40)))),
                                                          buttonTextStyle:
                                                              CustomTextStyles
                                                                  .titleSmallWhiteA70001,
                                                          onTap: () {
                                                            onTapCreate(
                                                                context);
                                                          })
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(left: 24),
                                                child: Text(
                                                    "lbl_good_evening".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .headlineMedium))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSaly7,
                                            height: getVerticalSize(229),
                                            width: getHorizontalSize(129),
                                            alignment: Alignment.bottomLeft)
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 23, top: 36),
                                      child: Text("msg_best_place_to_visit".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleMediumGray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.02))))),
                              Padding(
                                  padding: getPadding(left: 23, top: 16),
                                  child: BlocBuilder<HomeOneBloc, HomeOneState>(
                                      builder: (context, state) {
                                    return CarouselSlider.builder(
                                        options: CarouselOptions(
                                            height: getVerticalSize(118),
                                            initialPage: 0,
                                            autoPlay: true,
                                            viewportFraction: 1.0,
                                            enableInfiniteScroll: false,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              state.sliderIndex = index;
                                            }),
                                        itemCount: state
                                                .homeOneModelObj
                                                ?.sliderunsplashvItemList
                                                .length ??
                                            0,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          SliderunsplashvItemModel model = state
                                                      .homeOneModelObj
                                                      ?.sliderunsplashvItemList[
                                                  index] ??
                                              SliderunsplashvItemModel();
                                          return SliderunsplashvItemWidget(
                                              model);
                                        });
                                  })),
                              BlocBuilder<HomeOneBloc, HomeOneState>(
                                  builder: (context, state) {
                                return Container(
                                    height: getVerticalSize(8),
                                    margin: getMargin(top: 18),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: state.sliderIndex,
                                        count: state
                                                .homeOneModelObj
                                                ?.sliderunsplashvItemList
                                                .length ??
                                            0,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor:
                                                appTheme.blueGray900,
                                            dotColor: appTheme.orange100,
                                            dotHeight: getVerticalSize(8),
                                            dotWidth: getHorizontalSize(8))));
                              }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 23, top: 40),
                                      child: Text("msg_places_to_explore".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleMediumGray900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.02))))),
                              GestureDetector(
                                  onTap: () {
                                    onTapStackunsplash3v(context);
                                  },
                                  child: Container(
                                      height: getVerticalSize(37),
                                      width: getHorizontalSize(326),
                                      margin: getMargin(top: 15, right: 1),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgUnsplash3vk6urf2ve8,
                                                height: getVerticalSize(376),
                                                width: getHorizontalSize(326),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(12)),
                                                alignment:
                                                    Alignment.bottomCenter),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    padding: getPadding(
                                                        left: 19,
                                                        top: 15,
                                                        right: 19,
                                                        bottom: 15),
                                                    decoration: AppDecoration
                                                        .fill2
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderBL12),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 6,
                                                                      top: 3),
                                                              child: Text(
                                                                  "lbl_viatnem"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleLarge)),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      285),
                                                              margin: getMargin(
                                                                  left: 3),
                                                              child: Text(
                                                                  "msg_the_emerald_green"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
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
                                                                              getHorizontalSize(0.04)))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              13),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                            "lbl_explore"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: CustomTextStyles.titleSmallWhiteA70001.copyWith(letterSpacing: getHorizontalSize(0.01))),
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgArrow3,
                                                                            height: getVerticalSize(
                                                                                1),
                                                                            width: getHorizontalSize(
                                                                                25),
                                                                            margin: getMargin(
                                                                                left: 13,
                                                                                top: 10,
                                                                                bottom: 9))
                                                                      ])))
                                                        ])))
                                          ]))),
                              Container(
                                  height: getVerticalSize(81),
                                  width: getHorizontalSize(325),
                                  margin: getMargin(top: 6, right: 2),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: getHorizontalSize(325),
                                                margin: getMargin(top: 20),
                                                padding: getPadding(
                                                    top: 13, bottom: 13),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: fs.Svg(
                                                            ImageConstant
                                                                .imgGroup347),
                                                        fit: BoxFit.cover)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgHome,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          margin: getMargin(
                                                              top: 5,
                                                              bottom: 4)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 18),
                                                          child: Text(
                                                              "lbl_trips".tr,
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
                                                                              0.06)))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSettingsWhiteA70001,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          margin: getMargin(
                                                              top: 5,
                                                              bottom: 4)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocation,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          margin: getMargin(
                                                              top: 5,
                                                              bottom: 4))
                                                    ]))),
                                        CustomIconButton(
                                            height: 40,
                                            width: 40,
                                            margin: getMargin(left: 107),
                                            padding: getPadding(all: 8),
                                            decoration: IconButtonStyleHelper
                                                .fillOrange100TL20,
                                            alignment: Alignment.topLeft,
                                            onTap: () {
                                              onTapBtnCar(context);
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgCar))
                                      ]))
                            ]))))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homeScreen.
  onTapCreate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the tripDetailsTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the tripDetailsTwoScreen.
  onTapStackunsplash3v(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tripDetailsTwoScreen,
    );
  }

  /// Navigates to the tripOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the tripOneScreen.
  onTapBtnCar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tripOneScreen,
    );
  }
}
