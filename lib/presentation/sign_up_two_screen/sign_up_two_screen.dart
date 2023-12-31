import 'bloc/sign_up_two_bloc.dart';
import 'models/sign_up_two_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/core/utils/validation_functions.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_outlined_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoScreen extends StatelessWidget {
  SignUpTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpTwoBloc>(
        create: (context) =>
            SignUpTwoBloc(SignUpTwoState(signUpTwoModelObj: SignUpTwoModel()))
              ..add(SignUpTwoInitialEvent()),
        child: SignUpTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(63),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgBiarrowright,
                    margin: getMargin(left: 24, top: 8, bottom: 8)),
                title: AppbarSubtitle5(
                    text: "lbl_log_in2".tr, margin: getMargin(left: 16))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 2, bottom: 2),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: getVerticalSize(188),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: getVerticalSize(46),
                                            width: getHorizontalSize(277),
                                            margin: getMargin(bottom: 54),
                                            decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme.primary))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(46),
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme.primary))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: getHorizontalSize(152),
                                            margin: getMargin(right: 25),
                                            child: Text(
                                                "msg_create_your_account".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme.textTheme
                                                    .headlineMedium))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSaly3,
                                        height: getVerticalSize(180),
                                        width: getHorizontalSize(173),
                                        alignment: Alignment.centerLeft,
                                        margin: getMargin(left: 26))
                                  ])),
                          Padding(
                              padding: getPadding(left: 25, top: 29, right: 23),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_mobile_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallOnError
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.01))),
                                    BlocSelector<SignUpTwoBloc, SignUpTwoState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.mobilenumberController,
                                        builder:
                                            (context, mobilenumberController) {
                                          return CustomTextFormField(
                                              controller:
                                                  mobilenumberController,
                                              margin: getMargin(top: 5),
                                              contentPadding: getPadding(
                                                  left: 12,
                                                  top: 15,
                                                  right: 12,
                                                  bottom: 15),
                                              textStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              hintText:
                                                  "msg_enter_mobile_number".tr,
                                              hintStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              textInputType:
                                                  TextInputType.phone,
                                              validator: (value) {
                                                if (!isValidPhone(value)) {
                                                  return "Please enter valid phone number";
                                                }
                                                return null;
                                              });
                                        })
                                  ])),
                          CustomElevatedButton(
                              text: "lbl_next".tr,
                              margin: getMargin(left: 24, top: 16, right: 24),
                              buttonStyle: CustomButtonStyles.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(40)))),
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallWhiteA70001),
                          Padding(
                              padding: getPadding(left: 24, top: 11),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 11, bottom: 11),
                                        child: SizedBox(
                                            width: getHorizontalSize(154),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray900))),
                                    Padding(
                                        padding: getPadding(left: 2),
                                        child: Text("lbl_or".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodyLarge)),
                                    Padding(
                                        padding:
                                            getPadding(top: 11, bottom: 11),
                                        child: SizedBox(
                                            width: getHorizontalSize(154),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray900,
                                                indent: getHorizontalSize(1))))
                                  ])),
                          CustomOutlinedButton(
                              text: "msg_sign_up_with_google".tr,
                              margin: getMargin(left: 25, top: 15, right: 23),
                              leftIcon: Container(
                                  margin: getMargin(right: 8),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              buttonStyle: CustomButtonStyles.outlineBluegray800
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(48)))),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumPoppinsBluegray800),
                          CustomOutlinedButton(
                              text: "msg_sign_up_with_apple".tr,
                              margin: getMargin(left: 25, top: 16, right: 23),
                              leftIcon: Container(
                                  margin: getMargin(right: 8),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFire)),
                              buttonStyle: CustomButtonStyles.outlineBluegray800
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(48)))),
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumPoppinsBluegray800),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean3(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 19, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an4".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray900Medium_1),
                                        TextSpan(
                                            text: "lbl_log_in2".tr,
                                            style: CustomTextStyles
                                                .titleMediumBluegray900_1)
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the loginScreen.
  onTapTxtAlreadyhavean3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
