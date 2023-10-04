import '../expenses_payment_two_screen/widgets/listglobe_item_widget.dart';
import 'bloc/expenses_payment_two_bloc.dart';
import 'models/expenses_payment_two_model.dart';
import 'models/listglobe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_floating_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';

class ExpensesPaymentTwoScreen extends StatelessWidget {
  const ExpensesPaymentTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExpensesPaymentTwoBloc>(
      create: (context) => ExpensesPaymentTwoBloc(ExpensesPaymentTwoState(
        expensesPaymentTwoModelObj: ExpensesPaymentTwoModel(),
      ))
        ..add(ExpensesPaymentTwoInitialEvent()),
      child: ExpensesPaymentTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

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
              top: 11,
              bottom: 12,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "msg_expenses_payments".tr,
          ),
        ),
        body: Container(
          width: double.maxFinite,
          margin: getMargin(
            top: 31,
          ),
          padding: getPadding(
            left: 23,
            right: 23,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(
                  left: 1,
                  right: 1,
                ),
                padding: getPadding(
                  top: 22,
                  bottom: 22,
                ),
                decoration: AppDecoration.fill3.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_total_spent_by".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                CustomTextStyles.titleSmallWhiteA70001.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 7,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_35_0002".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style:
                                        CustomTextStyles.titleLargeJosefinSans,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      text: "lbl_view_detail".tr,
                      margin: getMargin(
                        top: 9,
                        bottom: 9,
                      ),
                      rightIcon: Container(
                        margin: getMargin(
                          left: 8,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgArrow3Gray900,
                        ),
                      ),
                      buttonStyle:
                          CustomButtonStyles.fillWhiteA70001TL21.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                        getHorizontalSize(
                          120,
                        ),
                        getVerticalSize(
                          42,
                        ),
                      ))),
                      buttonTextStyle: theme.textTheme.bodySmall!,
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 1,
                  top: 10,
                ),
                padding: getPadding(
                  left: 18,
                  top: 24,
                  right: 18,
                  bottom: 24,
                ),
                decoration: AppDecoration.fill3.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_wallet_balance".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                CustomTextStyles.titleSmallWhiteA70001.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_54672".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style:
                                        CustomTextStyles.titleLargeJosefinSans,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      text: "lbl_view_detail".tr,
                      margin: getMargin(
                        top: 7,
                        bottom: 7,
                      ),
                      rightIcon: Container(
                        margin: getMargin(
                          left: 8,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgArrow3Gray900,
                        ),
                      ),
                      buttonStyle:
                          CustomButtonStyles.fillWhiteA70001TL21.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                        getHorizontalSize(
                          120,
                        ),
                        getVerticalSize(
                          42,
                        ),
                      ))),
                      buttonTextStyle: theme.textTheme.bodySmall!,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 37,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_transfer".tr,
                        margin: getMargin(
                          right: 10,
                        ),
                        leftIcon: Container(
                          margin: getMargin(
                            right: 8,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSendPrimarycontainer,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillOrange100.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          double.maxFinite,
                          getVerticalSize(
                            40,
                          ),
                        ))),
                        buttonTextStyle:
                            CustomTextStyles.titleSmallPrimaryContainer,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_request".tr,
                        margin: getMargin(
                          left: 10,
                        ),
                        leftIcon: Container(
                          margin: getMargin(
                            right: 8,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgRequset,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillTeal100.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          double.maxFinite,
                          getVerticalSize(
                            40,
                          ),
                        ))),
                        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 35,
                ),
                child: Text(
                  "msg_recent_transactions".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumGray900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.02,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 1,
                    top: 21,
                    right: 1,
                  ),
                  child: BlocSelector<ExpensesPaymentTwoBloc,
                      ExpensesPaymentTwoState, ExpensesPaymentTwoModel?>(
                    selector: (state) => state.expensesPaymentTwoModelObj,
                    builder: (context, expensesPaymentTwoModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(
                              10,
                            ),
                          );
                        },
                        itemCount: expensesPaymentTwoModelObj
                                ?.listglobeItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          ListglobeItemModel model = expensesPaymentTwoModelObj
                                  ?.listglobeItemList[index] ??
                              ListglobeItemModel();
                          return ListglobeItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: getVerticalSize(
            77,
          ),
          width: getHorizontalSize(
            83,
          ),
          margin: getMargin(
            left: 146,
            right: 146,
            bottom: 8,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup347,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    "lbl_quick_payment".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelLargeWhiteA70001_1.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.06,
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
        floatingActionButton: CustomFloatingButton(
          height: 50,
          width: 50,
          backgroundColor: appTheme.indigo400,
          decoration: FloatingButtonStyleHelper.fillIndigo400,
          child: CustomImageView(
            svgPath: ImageConstant.imgGrid,
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
  }
}
