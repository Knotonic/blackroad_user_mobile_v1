import 'bloc/check_list_detatil_bloc.dart';
import 'models/check_list_detatil_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_title.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_checkbox_button.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class CheckListDetatilScreen extends StatelessWidget {
  const CheckListDetatilScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckListDetatilBloc>(
        create: (context) => CheckListDetatilBloc(CheckListDetatilState(
            checkListDetatilModelObj: CheckListDetatilModel()))
          ..add(CheckListDetatilInitialEvent()),
        child: CheckListDetatilScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 57,
                leading: AppbarIconbutton3(
                    svgPath: ImageConstant.imgBiarrowrightBlueGray900,
                    margin: getMargin(left: 25, top: 12, bottom: 12),
                    onTap: () {
                      onTapBiarrowright6(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_checklist_details".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 25, top: 30, right: 25, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_trekking_on_hills".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumGray900.copyWith(
                              letterSpacing: getHorizontalSize(0.02))),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox,
                          builder: (context, isCheckbox) {
                            return CustomCheckboxButton(
                                text: "lbl_clothes".tr,
                                value: isCheckbox,
                                margin: getMargin(left: 12, top: 28),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBoxEvent(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox1,
                          builder: (context, isCheckbox1) {
                            return CustomCheckboxButton(
                                text: "lbl_breakfast".tr,
                                value: isCheckbox1,
                                margin: getMargin(left: 13, top: 32),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox1Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox2,
                          builder: (context, isCheckbox2) {
                            return CustomCheckboxButton(
                                text: "lbl_accessories".tr,
                                value: isCheckbox2,
                                margin: getMargin(left: 14, top: 32),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox2Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox3,
                          builder: (context, isCheckbox3) {
                            return CustomCheckboxButton(
                                text: "lbl_shoes".tr,
                                value: isCheckbox3,
                                margin: getMargin(left: 56, top: 26),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox3Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox4,
                          builder: (context, isCheckbox4) {
                            return CustomCheckboxButton(
                                text: "lbl_rucksack".tr,
                                value: isCheckbox4,
                                margin: getMargin(left: 56, top: 26),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox4Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox5,
                          builder: (context, isCheckbox5) {
                            return CustomCheckboxButton(
                                text: "lbl_clothes".tr,
                                value: isCheckbox5,
                                margin: getMargin(left: 14, top: 38),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox5Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox6,
                          builder: (context, isCheckbox6) {
                            return CustomCheckboxButton(
                                text: "lbl_clothes".tr,
                                value: isCheckbox6,
                                margin: getMargin(left: 14, top: 32),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox6Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox7,
                          builder: (context, isCheckbox7) {
                            return CustomCheckboxButton(
                                text: "lbl_breakfast".tr,
                                value: isCheckbox7,
                                margin: getMargin(left: 15, top: 32),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox7Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox8,
                          builder: (context, isCheckbox8) {
                            return CustomCheckboxButton(
                                text: "lbl_accessories".tr,
                                value: isCheckbox8,
                                margin: getMargin(left: 16, top: 32),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox8Event(value: value));
                                });
                          }),
                      BlocSelector<CheckListDetatilBloc, CheckListDetatilState,
                              bool?>(
                          selector: (state) => state.isCheckbox9,
                          builder: (context, isCheckbox9) {
                            return CustomCheckboxButton(
                                text: "lbl_shoes".tr,
                                value: isCheckbox9,
                                margin: getMargin(left: 58, top: 26, bottom: 5),
                                padding: getPadding(top: 1, bottom: 1),
                                textStyle: theme.textTheme.labelLarge!,
                                onChange: (value) {
                                  context
                                      .read<CheckListDetatilBloc>()
                                      .add(ChangeCheckBox9Event(value: value));
                                });
                          })
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, bottom: 39),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomElevatedButton(
                      text: "lbl_edit".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              getHorizontalSize(154), getVerticalSize(40)))),
                      buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001),
                  CustomElevatedButton(
                      text: "lbl_save".tr,
                      margin: getMargin(left: 21),
                      buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              getHorizontalSize(153), getVerticalSize(40)))),
                      buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001)
                ]))));
  }

  /// Navigates to the checkListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the checkListScreen.
  onTapBiarrowright6(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkListScreen,
    );
  }
}
