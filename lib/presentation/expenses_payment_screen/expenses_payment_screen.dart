import '../expenses_payment_screen/widgets/expenses_item_widget.dart';
import 'bloc/expenses_payment_bloc.dart';
import 'models/expenses_item_model.dart';
import 'models/expenses_payment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/core/utils/validation_functions.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class ExpensesPaymentScreen extends StatelessWidget {
  ExpensesPaymentScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ExpensesPaymentBloc>(
      create: (context) => ExpensesPaymentBloc(ExpensesPaymentState(
        expensesPaymentModelObj: ExpensesPaymentModel(),
      ))
        ..add(ExpensesPaymentInitialEvent()),
      child: ExpensesPaymentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            62,
          ),
          leadingWidth: 57,
          leading: AppbarIconbutton2(
            svgPath: ImageConstant.imgBiarrowright,
            margin: getMargin(
              left: 25,
              top: 12,
              bottom: 12,
            ),
          ),
          title: AppbarSubtitle1(
            text: "lbl_transfer".tr,
            margin: getMargin(
              left: 73,
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 27,
            ),
            child: SizedBox(
              height: getVerticalSize(
                741,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 25,
                        right: 23,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BlocSelector<ExpensesPaymentBloc,
                              ExpensesPaymentState, TextEditingController?>(
                            selector: (state) => state.phonenumberController,
                            builder: (context, phonenumberController) {
                              return CustomTextFormField(
                                controller: phonenumberController,
                                contentPadding: getPadding(
                                  left: 16,
                                  top: 15,
                                  right: 16,
                                  bottom: 15,
                                ),
                                textStyle:
                                    CustomTextStyles.titleMediumGray900Medium,
                                hintText: "msg_pay_with_phone_number".tr,
                                hintStyle:
                                    CustomTextStyles.titleMediumGray900Medium,
                                textInputType: TextInputType.phone,
                                validator: (value) {
                                  if (!isValidPhone(value)) {
                                    return "Please enter valid phone number";
                                  }
                                  return null;
                                },
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
                          Padding(
                            padding: getPadding(
                              top: 30,
                            ),
                            child: Text(
                              "lbl_recent_payment".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleMediumGray900.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.02,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 27,
                              right: 1,
                            ),
                            child: BlocSelector<ExpensesPaymentBloc,
                                ExpensesPaymentState, ExpensesPaymentModel?>(
                              selector: (state) =>
                                  state.expensesPaymentModelObj,
                              builder: (context, expensesPaymentModelObj) {
                                return GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: getVerticalSize(
                                      39,
                                    ),
                                    crossAxisCount: 7,
                                    mainAxisSpacing: getHorizontalSize(
                                      8,
                                    ),
                                    crossAxisSpacing: getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: expensesPaymentModelObj
                                          ?.expensesItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    ExpensesItemModel model =
                                        expensesPaymentModelObj
                                                ?.expensesItemList[index] ??
                                            ExpensesItemModel();
                                    return ExpensesItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 37,
                            ),
                            child: Text(
                              "lbl_group_members".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleMediumGray900.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.02,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 19,
                              top: 35,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 14,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    "lbl_harry_potter".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBluegray900
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
                          Container(
                            margin: getMargin(
                              left: 19,
                              top: 38,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 14,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    "lbl_harry_potter".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBluegray900
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
                          Container(
                            margin: getMargin(
                              left: 19,
                              top: 38,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 14,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    "lbl_harry_potter".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBluegray900
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
                          Container(
                            margin: getMargin(
                              left: 19,
                              top: 38,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGlobe48x48,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 14,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    "lbl_harry_potter".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBluegray900
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
                          Container(
                            margin: getMargin(
                              left: 19,
                              top: 38,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGlobe48x48,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 14,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    "lbl_harry_potter".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBluegray900
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
                          Container(
                            margin: getMargin(
                              left: 19,
                              top: 38,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGlobe38x38,
                                  height: getSize(
                                    40,
                                  ),
                                  width: getSize(
                                    40,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  child: Text(
                                    "lbl_harry_potter".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBluegray900
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
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: getVerticalSize(
                        86,
                      ),
                      width: double.maxFinite,
                      margin: getMargin(
                        bottom: 57,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: getPadding(
                                left: 146,
                                top: 8,
                                right: 146,
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup347,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: getPadding(
                                  top: 28,
                                ),
                                child: Text(
                                  "lbl_quick_payment".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeWhiteA70001_1
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.06,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 50,
                            width: 50,
                            padding: getPadding(
                              all: 15,
                            ),
                            decoration: IconButtonStyleHelper.fillOrange100TL25,
                            alignment: Alignment.topCenter,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgQrcode,
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
        ),
      ),
    );
  }
}
