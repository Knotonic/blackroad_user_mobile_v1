
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/core/utils/validation_functions.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

import 'bloc/create_password_bloc.dart';
import 'models/create_password_model.dart';

class CreatePasswordScreen extends StatelessWidget {
  CreatePasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreatePasswordBloc>(
      create: (context) => CreatePasswordBloc(CreatePasswordState(
        CreatePasswordModelObj: CreatePasswordModel(),
      ))
        ..add(CreatePasswordInitialEvent()),
      child: CreatePasswordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    216,
                  ),
                  width: getHorizontalSize(
                    349,
                  ),
                  margin: getMargin(
                    top: 15,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          40,
                        ),
                        leadingWidth: 64,
                        leading: AppbarIconbutton(
                          svgPath: ImageConstant.imgBiarrowright,
                          margin: getMargin(
                            left: 24,
                          ),
                        ),
                        title: AppbarSubtitle5(
                          text: "lbl_back".tr,
                          margin: getMargin(
                            left: 16,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSaly10,
                        height: getVerticalSize(
                          199,
                        ),
                        width: getHorizontalSize(
                          206,
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: getHorizontalSize(
                            152,
                          ),
                          margin: getMargin(
                            bottom: 52,
                          ),
                          child: Text(
                            "msg_create_your_account".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: getPadding(
                    left: 23,
                    top: 51,
                    right: 23,
                    bottom: 51,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleSmallOnError.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.01,
                                ),
                              ),
                            ),
                            BlocSelector<CreatePasswordBloc, CreatePasswordState,
                                TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                  controller: passwordController,
                                  margin: getMargin(
                                    top: 5,
                                  ),
                                  contentPadding: getPadding(
                                    left: 12,
                                    top: 15,
                                    right: 12,
                                    bottom: 15,
                                  ),
                                  textStyle:
                                      CustomTextStyles.titleMediumOnError,
                                  hintText: "lbl_enter_password".tr,
                                  hintStyle:
                                      CustomTextStyles.titleMediumOnError,
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 1,
                          top: 19,
                          right: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "msg_confirm_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleSmallOnError.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.01,
                                ),
                              ),
                            ),
                            BlocSelector<CreatePasswordBloc, CreatePasswordState,
                                TextEditingController?>(
                              selector: (state) =>
                                  state.confirmpasswordController,
                              builder: (context, confirmpasswordController) {
                                return CustomTextFormField(
                                  controller: confirmpasswordController,
                                  margin: getMargin(
                                    top: 5,
                                  ),
                                  contentPadding: getPadding(
                                    all: 16,
                                  ),
                                  textStyle: CustomTextStyles.titleSmallOnError,
                                  hintText: "msg_confirm_password".tr,
                                  hintStyle: CustomTextStyles.titleSmallOnError,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      CustomElevatedButton(
                        text: "lbl_next".tr,
                        margin: getMargin(
                          top: 46,
                          bottom: 5,
                        ),
                        buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
