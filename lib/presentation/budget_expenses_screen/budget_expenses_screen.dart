import 'bloc/budget_expenses_bloc.dart';
import 'models/budget_expenses_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class BudgetExpensesScreen extends StatelessWidget {
  const BudgetExpensesScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BudgetExpensesBloc>(
      create: (context) => BudgetExpensesBloc(BudgetExpensesState(
        budgetExpensesModelObj: BudgetExpensesModel(),
      ))
        ..add(BudgetExpensesInitialEvent()),
      child: BudgetExpensesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<BudgetExpensesBloc, BudgetExpensesState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: CustomAppBar(
              height: getVerticalSize(
                85,
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
                text: "msg_budget_expenses".tr,
              ),
            ),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 23,
                top: 11,
                right: 23,
                bottom: 11,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: getMargin(
                      left: 2,
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
                                style: CustomTextStyles.titleSmallWhiteA70001
                                    .copyWith(
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
                                        style: CustomTextStyles
                                            .titleLargeJosefinSans,
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
                          buttonStyle: CustomButtonStyles.fillWhiteA70001TL21
                              .copyWith(
                                  fixedSize:
                                      MaterialStateProperty.all<Size>(Size(
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
                    width: getHorizontalSize(
                      320,
                    ),
                    margin: getMargin(
                      left: 2,
                      top: 15,
                      right: 6,
                    ),
                    child: Text(
                      "msg_the_below_details".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 6,
                        top: 26,
                      ),
                      child: Text(
                        "lbl_budget_tracker".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleMediumGray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.02,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getSize(
                      200,
                    ),
                    width: getSize(
                      200,
                    ),
                    margin: getMargin(
                      top: 25,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getSize(
                              200,
                            ),
                            width: getSize(
                              200,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  100,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getSize(
                              176,
                            ),
                            width: getSize(
                              176,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.yellow800,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  88,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_5002".tr,
                                  style:
                                      CustomTextStyles.titleLargePoppinsPrimary,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style:
                                      CustomTextStyles.titleLargePoppinsPrimary,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: getSize(
                            22,
                          ),
                          width: getSize(
                            22,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                11,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_budget".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            22,
                          ),
                          width: getSize(
                            22,
                          ),
                          margin: getMargin(
                            left: 22,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.yellow800,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                11,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_expenses".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.01,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 2,
                        top: 34,
                      ),
                      child: Text(
                        "msg_expenses_tracker".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleMediumGray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.02,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      320,
                    ),
                    margin: getMargin(
                      left: 2,
                      top: 22,
                      right: 6,
                    ),
                    child: Text(
                      "msg_the_below_details".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: getMargin(
                      top: 16,
                      bottom: 5,
                    ),
                    color: theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        12,
                      ),
                      width: getHorizontalSize(
                        238,
                      ),
                      padding: getPadding(
                        right: 70,
                      ),
                      decoration: AppDecoration.fill7.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Stack(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgGroup425,
                            height: getVerticalSize(
                              2,
                            ),
                            width: getHorizontalSize(
                              18,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
