import 'bloc/otp_bloc.dart';
import 'models/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpBloc>(
        create: (context) =>
            OtpBloc(OtpState(OtpModelObj: OtpModel()))
              ..add(OtpInitialEvent()),
        child: OtpScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(216),
                          width: getHorizontalSize(344),
                          margin: getMargin(top: 15),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSaly10,
                                height: getSize(206),
                                width: getSize(206),
                                alignment: Alignment.centerLeft),
                            CustomAppBar(
                                height: getVerticalSize(40),
                                leadingWidth: 64,
                                leading: AppbarIconbutton(
                                    svgPath: ImageConstant.imgBiarrowright,
                                    margin: getMargin(left: 24)),
                                title: AppbarSubtitle5(
                                    text: "lbl_back".tr,
                                    margin: getMargin(left: 16))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: getHorizontalSize(147),
                                    margin: getMargin(bottom: 53),
                                    child: Text("msg_verification_code".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.headlineMedium)))
                          ])),
                      Container(
                          padding: getPadding(
                              left: 24, top: 46, right: 24, bottom: 46),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtDescription(context);
                                    },
                                    child: Container(
                                        width: getHorizontalSize(299),
                                        margin: getMargin(right: 28),
                                        child: Text("msg_we_have_sent_the".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleMediumGray900Medium))),
                                Padding(
                                    padding: getPadding(top: 33),
                                    child: Text("lbl_enter_otp".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBluegray900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.01)))),
                                Padding(
                                    padding: getPadding(
                                        left: 19, top: 19, right: 18),
                                    child: BlocSelector<OtpBloc, OtpState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.otpController,
                                        builder: (context, otpController) {
                                          return PinCodeTextField(
                                              appContext: context,
                                              controller: otpController,
                                              length: 4,
                                              obscureText: false,
                                              obscuringCharacter: '*',
                                              keyboardType:
                                                  TextInputType.number,
                                              autoDismissKeyboard: true,
                                              enableActiveFill: true,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              onChanged: (value) {
                                                otpController?.text = value;
                                              },
                                              textStyle: TextStyle(
                                                  color: theme.colorScheme
                                                      .primaryContainer,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w500),
                                              pinTheme: PinTheme(
                                                  fieldHeight:
                                                      getHorizontalSize(50),
                                                  fieldWidth:
                                                      getHorizontalSize(50),
                                                  shape: PinCodeFieldShape.box,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(8)),
                                                  selectedFillColor:
                                                      appTheme.orange100,
                                                  activeFillColor:
                                                      appTheme.orange100,
                                                  inactiveFillColor:
                                                      appTheme.orange100,
                                                  inactiveColor:
                                                      Color(0X1212121D),
                                                  selectedColor:
                                                      Color(0X1212121D),
                                                  activeColor:
                                                      Color(0X1212121D)));
                                        })),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        margin: getMargin(top: 22, right: 45),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgRefresh,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 3,
                                                      bottom: 1),
                                                  child: Text(
                                                      "lbl_resend_otp".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme
                                                          .textTheme.labelLarge!
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.06))))
                                            ]))),
                                CustomElevatedButton(
                                    text: "lbl_verify".tr,
                                    margin: getMargin(top: 40, bottom: 5),
                                    buttonStyle: CustomButtonStyles.fillPrimary
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(double.maxFinite,
                                                        getVerticalSize(40)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallWhiteA70001)
                              ]))
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the loginScreen.
  onTapTxtDescription(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
