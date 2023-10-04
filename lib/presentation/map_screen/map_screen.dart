import 'bloc/map_bloc.dart';
import 'models/map_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MapBloc>(
      create: (context) => MapBloc(MapState(
        mapModelObj: MapModel(),
      ))
        ..add(MapInitialEvent()),
      child: MapScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: getVerticalSize(
            784,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMapsiclemap,
                height: getVerticalSize(
                  785,
                ),
                width: getHorizontalSize(
                  375,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      743,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      bottom: 1,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: getPadding(
                              left: 23,
                              top: 7,
                              right: 23,
                              bottom: 7,
                            ),
                            decoration: AppDecoration.fill.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: SizedBox(
                                      width: getHorizontalSize(
                                        20,
                                      ),
                                      child: Divider(
                                        height: getVerticalSize(
                                          1,
                                        ),
                                        thickness: getVerticalSize(
                                          1,
                                        ),
                                        color: appTheme.gray200,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 26,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDistance,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          top: 7,
                                          bottom: 8,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_madurai".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.01,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 8,
                                              ),
                                              child: Text(
                                                "msg_start_navigate_near".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.06,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      CustomElevatedButton(
                                        text: "lbl_start".tr,
                                        leftIcon: Container(
                                          margin: getMargin(
                                            right: 8,
                                          ),
                                          child: CustomImageView(
                                            svgPath: ImageConstant.imgSend,
                                          ),
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .fillPrimary
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          getHorizontalSize(
                                            99,
                                          ),
                                          getVerticalSize(
                                            40,
                                          ),
                                        ))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallWhiteA70001,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 21,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: appTheme.gray200,
                                    indent: getHorizontalSize(
                                      1,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 19,
                                  ),
                                  child: Text(
                                    "msg_your_upcomming_trips".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.01,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "msg_start_navigate_on".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    81,
                                  ),
                                  width: getHorizontalSize(
                                    325,
                                  ),
                                  margin: getMargin(
                                    left: 1,
                                    top: 23,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: getHorizontalSize(
                                            325,
                                          ),
                                          margin: getMargin(
                                            top: 20,
                                          ),
                                          padding: getPadding(
                                            left: 43,
                                            top: 14,
                                            right: 43,
                                            bottom: 14,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: fs.Svg(
                                                ImageConstant.imgGroup372,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant.imgHome,
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                margin: getMargin(
                                                  top: 4,
                                                  bottom: 3,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgMap,
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                margin: getMargin(
                                                  left: 48,
                                                  top: 4,
                                                  bottom: 3,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 36,
                                                  top: 16,
                                                ),
                                                child: Text(
                                                  "lbl_discover".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeWhiteA70001_1
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.06,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                margin: getMargin(
                                                  left: 35,
                                                  top: 4,
                                                  bottom: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        margin: getMargin(
                                          right: 106,
                                        ),
                                        padding: getPadding(
                                          all: 8,
                                        ),
                                        decoration:
                                            IconButtonStyleHelper.fillOrange100,
                                        alignment: Alignment.topRight,
                                        child: CustomImageView(
                                          svgPath: ImageConstant.imgSettings,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        BlocSelector<MapBloc, MapState, TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomTextFormField(
                              width: getHorizontalSize(
                                326,
                              ),
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
                              alignment: Alignment.topCenter,
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
                      ],
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
