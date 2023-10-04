import 'bloc/expenses_payment_three_bloc.dart';
import 'models/expenses_payment_three_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_floating_button.dart';

class ExpensesPaymentThreeScreen extends StatelessWidget {
  const ExpensesPaymentThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExpensesPaymentThreeBloc>(
      create: (context) => ExpensesPaymentThreeBloc(ExpensesPaymentThreeState(
        expensesPaymentThreeModelObj: ExpensesPaymentThreeModel(),
      ))
        ..add(ExpensesPaymentThreeInitialEvent()),
      child: ExpensesPaymentThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ExpensesPaymentThreeBloc, ExpensesPaymentThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: CustomAppBar(
              height: getVerticalSize(
                56,
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
            body: Container(
              width: double.maxFinite,
              margin: getMargin(
                top: 28,
              ),
              padding: getPadding(
                left: 53,
                right: 53,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      top: 15,
                    ),
                    child: Text(
                      "msg_paying_harry_potter".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelLargeBluegray900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.06,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "lbl_35_0003".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  CustomElevatedButton(
                    text: "lbl_add_notes".tr,
                    margin: getMargin(
                      top: 22,
                    ),
                    buttonStyle: CustomButtonStyles.fillGray200.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      getHorizontalSize(
                        99,
                      ),
                      getVerticalSize(
                        36,
                      ),
                    ))),
                    buttonTextStyle: theme.textTheme.titleSmall!,
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_1".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_3".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_4".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_5".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_6".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_7".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_8".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                      Container(
                        width: getSize(
                          50,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 14,
                          right: 20,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_9".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                  CustomElevatedButton(
                    text: "lbl_0".tr,
                    buttonStyle: CustomButtonStyles.fillWhiteA70001.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      getHorizontalSize(
                        50,
                      ),
                      getVerticalSize(
                        50,
                      ),
                    ))),
                    buttonTextStyle:
                        CustomTextStyles.titleMediumPrimaryContainer,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomElevatedButton(
              text: "lbl_send_money".tr,
              margin: getMargin(
                left: 25,
                right: 24,
                bottom: 31,
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
            floatingActionButton: CustomFloatingButton(
              height: 50,
              width: 50,
              backgroundColor: appTheme.whiteA70001,
              decoration: FloatingButtonStyleHelper.fillWhiteA70001TL8,
              child: CustomImageView(
                svgPath: ImageConstant.imgBiarrowrightBlueGray900,
                height: getVerticalSize(
                  25.0,
                ),
                width: getHorizontalSize(
                  25.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
