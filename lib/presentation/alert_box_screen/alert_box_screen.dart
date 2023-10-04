import 'bloc/alert_box_bloc.dart';
import 'models/alert_box_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_checkbox_button.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class AlertBoxScreen extends StatelessWidget {
  const AlertBoxScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AlertBoxBloc>(
      create: (context) => AlertBoxBloc(AlertBoxState(
        alertBoxModelObj: AlertBoxModel(),
      ))
        ..add(AlertBoxInitialEvent()),
      child: AlertBoxScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 16,
            right: 24,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 18,
                ),
                child: Text(
                  "msg_upload_documents".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleLargeGray900,
                ),
              ),
              BlocSelector<AlertBoxBloc, AlertBoxState, TextEditingController?>(
                selector: (state) => state.registrationcopController,
                builder: (context, registrationcopController) {
                  return CustomTextFormField(
                    controller: registrationcopController,
                    margin: getMargin(
                      top: 25,
                    ),
                    contentPadding: getPadding(
                      left: 16,
                      top: 15,
                      right: 16,
                      bottom: 15,
                    ),
                    textStyle: CustomTextStyles.titleMediumGray900Medium,
                    hintText: "msg_registration_copy".tr,
                    hintStyle: CustomTextStyles.titleMediumGray900Medium,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray900,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray900,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray900,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray900,
                  );
                },
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 12,
                    top: 25,
                    right: 15,
                  ),
                  child: DottedBorder(
                    color: theme.colorScheme.primaryContainer,
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        1,
                      ),
                      top: getVerticalSize(
                        1,
                      ),
                      right: getHorizontalSize(
                        1,
                      ),
                      bottom: getVerticalSize(
                        1,
                      ),
                    ),
                    strokeWidth: getHorizontalSize(
                      1,
                    ),
                    radius: Radius.circular(
                      8,
                    ),
                    borderType: BorderType.RRect,
                    dashPattern: [
                      4,
                      19,
                    ],
                    child: Container(
                      width: getHorizontalSize(
                        300,
                      ),
                      padding: getPadding(
                        left: 51,
                        top: 21,
                        right: 51,
                        bottom: 21,
                      ),
                      decoration: AppDecoration.outline1.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgGroup437,
                            height: getVerticalSize(
                              38,
                            ),
                            width: getHorizontalSize(
                              53,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 13,
                              ),
                              child: Text(
                                "msg_upload_your_registration".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBluegray900
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.06,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CustomElevatedButton(
                            text: "lbl_browse".tr,
                            margin: getMargin(
                              top: 13,
                            ),
                            buttonStyle: CustomButtonStyles.fillOrange100
                                .copyWith(
                                    fixedSize:
                                        MaterialStateProperty.all<Size>(Size(
                              getHorizontalSize(
                                115,
                              ),
                              getVerticalSize(
                                40,
                              ),
                            ))),
                            buttonTextStyle:
                                CustomTextStyles.titleSmallBluegray900,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  top: 45,
                ),
                child: Row(
                  children: [
                    BlocSelector<AlertBoxBloc, AlertBoxState, bool?>(
                      selector: (state) => state.isCheckbox,
                      builder: (context, isCheckbox) {
                        return CustomCheckboxButton(
                          text: "msg_registration_copy".tr,
                          value: isCheckbox,
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          textStyle: theme.textTheme.labelLarge!,
                          onChange: (value) {
                            context
                                .read<AlertBoxBloc>()
                                .add(ChangeCheckBoxEvent(value: value));
                          },
                        );
                      },
                    ),
                    BlocSelector<AlertBoxBloc, AlertBoxState, bool?>(
                      selector: (state) => state.isCheckbox1,
                      builder: (context, isCheckbox1) {
                        return CustomCheckboxButton(
                          text: "lbl_insurance".tr,
                          value: isCheckbox1,
                          margin: getMargin(
                            left: 48,
                          ),
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          textStyle: theme.textTheme.labelLarge!,
                          onChange: (value) {
                            context
                                .read<AlertBoxBloc>()
                                .add(ChangeCheckBox1Event(value: value));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  top: 28,
                  right: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkOrange100,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkOrange100,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
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
