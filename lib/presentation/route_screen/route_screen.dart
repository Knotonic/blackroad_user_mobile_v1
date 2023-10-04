import 'bloc/route_bloc.dart';
import 'models/route_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RouteBloc>(
      create: (context) => RouteBloc(RouteState(
        routeModelObj: RouteModel(),
      ))
        ..add(RouteInitialEvent()),
      child: RouteScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup155,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 23,
              top: 30,
              right: 23,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocSelector<RouteBloc, RouteState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomTextFormField(
                      controller: searchController,
                      contentPadding: getPadding(
                        left: 19,
                        top: 12,
                        right: 19,
                        bottom: 12,
                      ),
                      textStyle: theme.textTheme.titleSmall!,
                      hintText: "msg_search_locations".tr,
                      hintStyle: theme.textTheme.titleSmall!,
                      filled: true,
                      fillColor: appTheme.whiteA70001,
                      defaultBorderDecoration:
                          TextFormFieldStyleHelper.fillWhiteA70001TL8,
                      enabledBorderDecoration:
                          TextFormFieldStyleHelper.fillWhiteA70001TL8,
                      focusedBorderDecoration:
                          TextFormFieldStyleHelper.fillWhiteA70001TL8,
                      disabledBorderDecoration:
                          TextFormFieldStyleHelper.fillWhiteA70001TL8,
                    );
                  },
                ),
                Container(
                  height: getVerticalSize(
                    545,
                  ),
                  width: getHorizontalSize(
                    254,
                  ),
                  margin: getMargin(
                    top: 48,
                    bottom: 5,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: getVerticalSize(
                            269,
                          ),
                          width: getHorizontalSize(
                            240,
                          ),
                          margin: getMargin(
                            bottom: 8,
                          ),
                          padding: getPadding(
                            left: 44,
                            top: 98,
                            right: 44,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup467,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: getMargin(
                                    top: 14,
                                  ),
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
                                      color: theme.colorScheme.primaryContainer,
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
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  height: getVerticalSize(
                                    23,
                                  ),
                                  width: getHorizontalSize(
                                    19,
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
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                9,
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.yellow80001,
                                                spreadRadius: getHorizontalSize(
                                                  2,
                                                ),
                                                blurRadius: getHorizontalSize(
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
                                                alignment: Alignment.center,
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgImage,
                                                height: getSize(
                                                  11,
                                                ),
                                                width: getSize(
                                                  11,
                                                ),
                                                alignment: Alignment.topLeft,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: getVerticalSize(
                            32,
                          ),
                          width: getHorizontalSize(
                            19,
                          ),
                          margin: getMargin(
                            top: 242,
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
                                      color: theme.colorScheme.primaryContainer,
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
                                child: SizedBox(
                                  height: getVerticalSize(
                                    23,
                                  ),
                                  width: getHorizontalSize(
                                    19,
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
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                9,
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.yellow80001,
                                                spreadRadius: getHorizontalSize(
                                                  2,
                                                ),
                                                blurRadius: getHorizontalSize(
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
                                                alignment: Alignment.center,
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgImage,
                                                height: getSize(
                                                  11,
                                                ),
                                                width: getSize(
                                                  11,
                                                ),
                                                alignment: Alignment.topLeft,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: getVerticalSize(
                            32,
                          ),
                          width: getHorizontalSize(
                            19,
                          ),
                          margin: getMargin(
                            right: 108,
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
                                      color: theme.colorScheme.primaryContainer,
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
                                child: SizedBox(
                                  height: getVerticalSize(
                                    23,
                                  ),
                                  width: getHorizontalSize(
                                    19,
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
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                9,
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.yellow80001,
                                                spreadRadius: getHorizontalSize(
                                                  2,
                                                ),
                                                blurRadius: getHorizontalSize(
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
                                                alignment: Alignment.center,
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgImage,
                                                height: getSize(
                                                  11,
                                                ),
                                                width: getSize(
                                                  11,
                                                ),
                                                alignment: Alignment.topLeft,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: getVerticalSize(
                            242,
                          ),
                          width: getHorizontalSize(
                            131,
                          ),
                          margin: getMargin(
                            top: 27,
                            right: 28,
                          ),
                          padding: getPadding(
                            left: 27,
                            top: 71,
                            right: 27,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup465,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: getMargin(
                                    top: 14,
                                  ),
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
                                      color: theme.colorScheme.primaryContainer,
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
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  height: getVerticalSize(
                                    23,
                                  ),
                                  width: getHorizontalSize(
                                    19,
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
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                9,
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.yellow80001,
                                                spreadRadius: getHorizontalSize(
                                                  2,
                                                ),
                                                blurRadius: getHorizontalSize(
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
                                                alignment: Alignment.center,
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgImage,
                                                height: getSize(
                                                  11,
                                                ),
                                                width: getSize(
                                                  11,
                                                ),
                                                alignment: Alignment.topLeft,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: getVerticalSize(
                            32,
                          ),
                          width: getHorizontalSize(
                            19,
                          ),
                          margin: getMargin(
                            right: 50,
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
                                      color: theme.colorScheme.primaryContainer,
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
                                child: SizedBox(
                                  height: getVerticalSize(
                                    23,
                                  ),
                                  width: getHorizontalSize(
                                    19,
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
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                9,
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.yellow80001,
                                                spreadRadius: getHorizontalSize(
                                                  2,
                                                ),
                                                blurRadius: getHorizontalSize(
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
                                                alignment: Alignment.center,
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgImage,
                                                height: getSize(
                                                  11,
                                                ),
                                                width: getSize(
                                                  11,
                                                ),
                                                alignment: Alignment.topLeft,
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 54,
            right: 45,
            bottom: 31,
          ),
          decoration: AppDecoration.fill3.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder28,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: getPadding(
                  top: 11,
                  bottom: 9,
                ),
                child: Text(
                  "lbl_detail".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.06,
                    ),
                  ),
                ),
              ),
              CustomElevatedButton(
                text: "lbl_route".tr,
                margin: getMargin(
                  left: 20,
                ),
                buttonStyle: CustomButtonStyles.fillWhiteA70001TL16.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    73,
                  ),
                  getVerticalSize(
                    36,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.labelLargeBluegray900,
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 12,
                  bottom: 8,
                ),
                child: Text(
                  "lbl_gallery".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.06,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 40,
                  top: 11,
                  bottom: 9,
                ),
                child: Text(
                  "lbl_members".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
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
    );
  }
}
