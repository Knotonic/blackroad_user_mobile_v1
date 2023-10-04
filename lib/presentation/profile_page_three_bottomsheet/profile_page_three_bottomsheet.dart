import 'bloc/profile_page_three_bloc.dart';
import 'models/profile_page_three_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ProfilePageThreeBottomsheet extends StatelessWidget {
  const ProfilePageThreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilePageThreeBloc>(
      create: (context) => ProfilePageThreeBloc(ProfilePageThreeState(
        profilePageThreeModelObj: ProfilePageThreeModel(),
      ))
        ..add(ProfilePageThreeInitialEvent()),
      child: ProfilePageThreeBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        width: getHorizontalSize(
          376,
        ),
        padding: getPadding(
          left: 24,
          top: 33,
          right: 24,
          bottom: 33,
        ),
        decoration: AppDecoration.fill8.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL36,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_settings".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium!.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.02,
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowup,
                    height: getSize(
                      18,
                    ),
                    width: getSize(
                      18,
                    ),
                    margin: getMargin(
                      bottom: 2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 38,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_notification".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallWhiteA70001Medium
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.04,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Text(
                            "msg_turn_on_your_notification".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallWhiteA70001_1
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
                  BlocSelector<ProfilePageThreeBloc, ProfilePageThreeState,
                      bool?>(
                    selector: (state) => state.isSelectedSwitch,
                    builder: (context, isSelectedSwitch) {
                      return CustomSwitch(
                        margin: getMargin(
                          left: 37,
                          top: 6,
                          bottom: 7,
                        ),
                        value: isSelectedSwitch,
                        onChange: (value) {
                          context
                              .read<ProfilePageThreeBloc>()
                              .add(ChangeSwitchEvent(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 25,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_theme".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallWhiteA70001Medium
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            0.04,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Text(
                          "msg_change_your_theme".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              CustomTextStyles.bodySmallWhiteA70001_1.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.06,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  BlocSelector<ProfilePageThreeBloc, ProfilePageThreeState,
                      bool?>(
                    selector: (state) => state.isSelectedSwitch1,
                    builder: (context, isSelectedSwitch1) {
                      return CustomSwitch(
                        margin: getMargin(
                          top: 6,
                          bottom: 7,
                        ),
                        value: isSelectedSwitch1,
                        onChange: (value) {
                          context
                              .read<ProfilePageThreeBloc>()
                              .add(ChangeSwitch1Event(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomElevatedButton(
              text: "lbl_logout".tr,
              margin: getMargin(
                bottom: 7,
              ),
              leftIcon: Container(
                margin: getMargin(
                  right: 8,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgLogout,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillBlue300.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  40,
                ),
              ))),
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001,
            ),
          ],
        ),
      ),
    );
  }
}
