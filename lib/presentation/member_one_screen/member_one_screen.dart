import 'bloc/member_one_bloc.dart';
import 'models/member_one_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_title.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class MemberOneScreen extends StatelessWidget {
  const MemberOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MemberOneBloc>(
      create: (context) => MemberOneBloc(MemberOneState(
        memberOneModelObj: MemberOneModel(),
      ))
        ..add(MemberOneInitialEvent()),
      child: MemberOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            57,
          ),
          leadingWidth: 57,
          leading: AppbarIconbutton3(
            svgPath: ImageConstant.imgBiarrowrightBlueGray900,
            margin: getMargin(
              left: 25,
              top: 11,
              bottom: 12,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_group_chat".tr,
            margin: getMargin(
              left: 87,
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 17,
            right: 17,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGlobe38x38,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        bottom: 16,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          left: 8,
                          top: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_harry_potter".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "lbl_dec_31_2022".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: getHorizontalSize(
                                278,
                              ),
                              margin: getMargin(
                                top: 7,
                              ),
                              child: Text(
                                "msg_it_sounds_like_you".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodySmall!.copyWith(
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
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGlobe38x38,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        bottom: 16,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          left: 7,
                          top: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "lbl_voldermort".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.06,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_dec_31_2022".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: getHorizontalSize(
                                278,
                              ),
                              margin: getMargin(
                                top: 8,
                              ),
                              child: Text(
                                "msg_it_sounds_like_you".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodySmall!.copyWith(
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
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 14,
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGlobe38x38,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        bottom: 16,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          left: 7,
                          top: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "lbl_voldermort".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.06,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_dec_31_2022".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: getHorizontalSize(
                                278,
                              ),
                              margin: getMargin(
                                top: 8,
                              ),
                              child: Text(
                                "msg_it_sounds_like_you".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodySmall!.copyWith(
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
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGlobe38x38,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        bottom: 16,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          left: 7,
                          top: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "lbl_voldermort".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.06,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_dec_31_2022".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: getHorizontalSize(
                                278,
                              ),
                              margin: getMargin(
                                top: 8,
                              ),
                              child: Text(
                                "msg_it_sounds_like_you".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodySmall!.copyWith(
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
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGlobe48x48,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        bottom: 16,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: getPadding(
                          left: 7,
                          top: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "lbl_voldermort".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.06,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_dec_31_2022".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: getHorizontalSize(
                                277,
                              ),
                              margin: getMargin(
                                top: 8,
                              ),
                              child: Text(
                                "msg_it_sounds_like_you".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodySmall!.copyWith(
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
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 19,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 37,
                      width: 37,
                      margin: getMargin(
                        top: 1,
                        bottom: 1,
                      ),
                      padding: getPadding(
                        all: 12,
                      ),
                      decoration: IconButtonStyleHelper.fillBluegray900TL18,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgGrid,
                      ),
                    ),
                    Expanded(
                      child: BlocSelector<MemberOneBloc, MemberOneState,
                          TextEditingController?>(
                        selector: (state) => state.messageController,
                        builder: (context, messageController) {
                          return CustomTextFormField(
                            controller: messageController,
                            margin: getMargin(
                              left: 9,
                            ),
                            contentPadding: getPadding(
                              left: 16,
                              top: 10,
                              bottom: 10,
                            ),
                            textStyle:
                                CustomTextStyles.titleMediumGray900Medium,
                            hintText: "lbl_messaged".tr,
                            hintStyle:
                                CustomTextStyles.titleMediumGray900Medium,
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 12,
                                right: 16,
                                bottom: 12,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgUser,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                40,
                              ),
                            ),
                            filled: true,
                            fillColor: appTheme.gray200,
                            defaultBorderDecoration:
                                TextFormFieldStyleHelper.fillGray200,
                            enabledBorderDecoration:
                                TextFormFieldStyleHelper.fillGray200,
                            focusedBorderDecoration:
                                TextFormFieldStyleHelper.fillGray200,
                            disabledBorderDecoration:
                                TextFormFieldStyleHelper.fillGray200,
                          );
                        },
                      ),
                    ),
                    CustomIconButton(
                      height: 37,
                      width: 37,
                      margin: getMargin(
                        left: 9,
                        top: 1,
                        bottom: 1,
                      ),
                      padding: getPadding(
                        all: 12,
                      ),
                      decoration: IconButtonStyleHelper.fillPrimaryTL18,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSendWhiteA70001,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
