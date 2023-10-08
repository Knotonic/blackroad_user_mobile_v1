import '../../core/utils/keyboard_visibility.dart';
import '../../core/utils/root_widget.dart';
import '../../data/network/auth/sign_in_network.dart';
import 'bloc/login_bloc.dart';
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
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return RepositoryProvider<SignInNetwork>(
      create: (context) => SignInNetwork(),
      child: BlocProvider<LoginBloc>(
          create: (context) =>
              LoginBloc(LoginState(), context.read<SignInNetwork>())
                ..add(LoginInitialEvent()),
          child: LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: RootWidget(
      child: Scaffold(
          backgroundColor: appTheme.whiteA70001,
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
              height: getVerticalSize(63),
              leadingWidth: 64,
              leading: AppbarIconbutton(
                  onTap: () {},
                  svgPath: ImageConstant.imgBiarrowright,
                  margin: getMargin(left: 24, top: 8, bottom: 8)),
              title: AppbarSubtitle5(
                  text: "lbl_sign_up".tr, margin: getMargin(left: 15))),
          body: Form(
              key: context.read<LoginBloc>().formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 3, bottom: 3),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: getVerticalSize(182),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: getVerticalSize(46),
                                            width: getHorizontalSize(271),
                                            margin: getMargin(bottom: 54),
                                            decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme.primary))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle48,
                                        height: getVerticalSize(46),
                                        width: getHorizontalSize(375),
                                        alignment: Alignment.bottomCenter),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSaly3,
                                        height: getVerticalSize(180),
                                        width: getHorizontalSize(173),
                                        alignment: Alignment.centerLeft,
                                        margin: getMargin(left: 24)),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: getHorizontalSize(116),
                                            margin: getMargin(right: 62),
                                            child: Text("lbl_welcome_back".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.headlineMedium)))
                                  ])),
                          Padding(
                              padding: getPadding(left: 24, top: 33, right: 24),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Builder(builder: (context) {
                                      final mobileController = context.select(
                                          (LoginBloc data) =>
                                              data.state.mobilenoController);
                                      final mobileNumber = context.select(
                                          (LoginBloc data) =>
                                              data.state.mobileNumber);
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_mobile_number".tr,
                                              style: (mobileNumber ?? '')
                                                          .length ==
                                                      0
                                                  ? CustomTextStyles
                                                      .titleSmallOnError
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.01))
                                                  : CustomTextStyles
                                                      .titleSmallBluegray900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.01))),
                                          CustomTextFormField(
                                            focusNode: context
                                                .read<LoginBloc>()
                                                .mobileNumberFocusNode,
                                            //  autofocus: true,
                                            controller: mobileController,
                                            margin: getMargin(top: 5),
                                            contentPadding: getPadding(
                                                left: 16,
                                                top: 15,
                                                right: 16,
                                                bottom: 15),
                                            textStyle: CustomTextStyles
                                                .titleMediumBluegray900Medium,
                                            hintText:
                                                "lbl_enter_mobile_number".tr,
                                            hintStyle: CustomTextStyles
                                                .titleMediumOnError,
                                            textInputAction:
                                                TextInputAction.next,
                                            textInputType: TextInputType.phone,
                                            onChange: (value) {
                                              context.read<LoginBloc>().add(
                                                  LoginChangeMobile(
                                                      mobileNumber:
                                                          value ?? ''));
                                            },
                                            validator: (value) {
                                              Logger.log(value);
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            },
                                            focusedBorderDecoration:
                                                (mobileNumber ?? '').length == 0
                                                    ? null
                                                    : TextFormFieldStyleHelper
                                                        .outlineBluegray900,
                                            defaultBorderDecoration:
                                                (mobileNumber ?? '').length == 0
                                                    ? null
                                                    : TextFormFieldStyleHelper
                                                        .outlineBluegray900,
                                            enabledBorderDecoration:
                                                (mobileNumber ?? '').length == 0
                                                    ? null
                                                    : TextFormFieldStyleHelper
                                                        .outlineBluegray900,
                                          ),
                                        ],
                                      );
                                    })
                                  ])),
                          Padding(
                              padding: getPadding(left: 24, top: 17, right: 24),
                              child: Builder(builder: (context) {
                                final passwordController = context.select(
                                    (LoginBloc data) =>
                                        data.state.passwordController);
                                final password = context.select(
                                    (LoginBloc data) => data.state.password);
                                return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: (password ?? '').length == 0
                                              ? CustomTextStyles
                                                  .titleSmallOnError
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.01))
                                              : CustomTextStyles
                                                  .titleSmallBluegray900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.01))),
                                      CustomTextFormField(
                                          focusNode: context
                                              .read<LoginBloc>()
                                              .passwordFocusNode,
                                          //   autofocus: true,
                                          controller: passwordController,
                                          margin: getMargin(top: 5),
                                          contentPadding: getPadding(
                                              left: 12,
                                              top: 15,
                                              right: 12,
                                              bottom: 15),
                                          textStyle: CustomTextStyles
                                              .titleMediumBluegray900Medium,
                                          hintText: "lbl_enter_password".tr,
                                          hintStyle: CustomTextStyles
                                              .titleMediumOnError,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "Please enter valid password";
                                            }
                                            return null;
                                          },
                                          onChange: (value) {
                                            context.read<LoginBloc>().add(
                                                LoginChangePassword(
                                                    password: value ?? ''));
                                          },
                                          focusedBorderDecoration:
                                              (password ?? '').length == 0
                                                  ? null
                                                  : TextFormFieldStyleHelper
                                                      .outlineBluegray900,
                                          defaultBorderDecoration:
                                              (password ?? '').length == 0
                                                  ? null
                                                  : TextFormFieldStyleHelper
                                                      .outlineBluegray900,
                                          enabledBorderDecoration:
                                              (password ?? '').length == 0
                                                  ? null
                                                  : TextFormFieldStyleHelper
                                                      .outlineBluegray900,
                                          obscureText: true)
                                    ]);
                              })),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 15, right: 16),
                                  child: Text("msg_forget_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBluegray800
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.01))))),
                          CustomElevatedButton(
                              onTap: () {},
                              text: "lbl_login".tr,
                              margin: getMargin(left: 24, top: 15, right: 24),
                              buttonStyle: CustomButtonStyles.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(40)))),
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallWhiteA70001),
                          Padding(
                              padding: getPadding(left: 24, top: 20),
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
                              text: "msg_log_in_with_google".tr,
                              margin: getMargin(left: 24, top: 11, right: 24),
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
                                  .titleMediumPoppinsBluegray800,
                              onTap: () {}),
                          CustomOutlinedButton(
                              text: "msg_log_in_with_apple".tr,
                              margin: getMargin(left: 24, top: 16, right: 24),
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
                                NavigatorService.pushNamed(
                                    AppRoutes.signUpScreen);
                              },
                              child: Padding(
                                  padding: getPadding(top: 18, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_dont_have_account".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray900Medium_1),
                                        TextSpan(
                                            text: " ",
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .titleMediumBluegray900_1
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.02)))
                                      ]),
                                      textAlign: TextAlign.left))),
                          KeyboardVisiblity(getVerticalSize(100))
                        ]),
                  )))),
    ));
  }
}
