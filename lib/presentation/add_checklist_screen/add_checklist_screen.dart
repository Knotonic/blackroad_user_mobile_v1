import '../add_checklist_screen/widgets/add_checklist_item_widget.dart';
import 'bloc/add_checklist_bloc.dart';
import 'models/add_checklist_item_model.dart';
import 'models/add_checklist_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_title.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_checkbox_button.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_icon_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class AddChecklistScreen extends StatelessWidget {
  const AddChecklistScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddChecklistBloc>(
        create: (context) => AddChecklistBloc(
            AddChecklistState(addChecklistModelObj: AddChecklistModel()))
          ..add(AddChecklistInitialEvent()),
        child: AddChecklistScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(80),
                leadingWidth: 57,
                leading: AppbarIconbutton3(
                    svgPath: ImageConstant.imgBiarrowrightBlueGray900,
                    margin: getMargin(left: 25, top: 12, bottom: 12),
                    onTap: () {
                      onTapBiarrowright5(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_add_checklist".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 24, right: 23, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(153),
                          child: BlocSelector<AddChecklistBloc,
                                  AddChecklistState, AddChecklistModel?>(
                              selector: (state) => state.addChecklistModelObj,
                              builder: (context, addChecklistModelObj) {
                                return ListView.separated(
                                    padding: getPadding(left: 2, right: 1),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          width: getHorizontalSize(12));
                                    },
                                    itemCount: addChecklistModelObj
                                            ?.addChecklistItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      AddChecklistItemModel model =
                                          addChecklistModelObj
                                                      ?.addChecklistItemList[
                                                  index] ??
                                              AddChecklistItemModel();
                                      return AddChecklistItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(left: 1, top: 39),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_checklist_title".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .titleSmallBluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))),
                                BlocSelector<
                                        AddChecklistBloc,
                                        AddChecklistState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.groupfiftysevenController,
                                    builder:
                                        (context, groupfiftysevenController) {
                                      return CustomTextFormField(
                                          controller: groupfiftysevenController,
                                          margin: getMargin(top: 5),
                                          contentPadding: getPadding(
                                              left: 16,
                                              top: 15,
                                              right: 16,
                                              bottom: 15),
                                          textStyle: CustomTextStyles
                                              .titleMediumBluegray900Medium,
                                          hintText: "msg_trekking_on_hills".tr,
                                          hintStyle: CustomTextStyles
                                              .titleMediumBluegray900Medium,
                                          textInputAction: TextInputAction.next,
                                          defaultBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          enabledBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          focusedBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          disabledBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900);
                                    })
                              ])),
                      CustomElevatedButton(
                          text: "lbl_create".tr,
                          margin: getMargin(top: 18, right: 2),
                          buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                  getHorizontalSize(153),
                                  getVerticalSize(40)))),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallWhiteA70001,
                          alignment: Alignment.centerRight),
                      Padding(
                          padding: getPadding(left: 1, top: 32),
                          child: Text("msg_trekking_on_hills".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumGray900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.02)))),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(children: [
                            Expanded(
                                child: BlocSelector<
                                        AddChecklistBloc,
                                        AddChecklistState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.textfiledwithouController,
                                    builder:
                                        (context, textfiledwithouController) {
                                      return CustomTextFormField(
                                          controller: textfiledwithouController,
                                          contentPadding: getPadding(
                                              left: 12,
                                              top: 15,
                                              right: 12,
                                              bottom: 15),
                                          textStyle: CustomTextStyles
                                              .titleMediumBluegray900Medium,
                                          hintText: "lbl_clothes".tr,
                                          hintStyle: CustomTextStyles
                                              .titleMediumBluegray900Medium,
                                          textInputAction: TextInputAction.next,
                                          defaultBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          enabledBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          focusedBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          disabledBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900);
                                    })),
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                margin: getMargin(left: 16),
                                padding: getPadding(all: 17),
                                decoration:
                                    IconButtonStyleHelper.fillPrimaryTL25,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGrid))
                          ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Row(children: [
                            Expanded(
                                child: BlocSelector<
                                        AddChecklistBloc,
                                        AddChecklistState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.textfiledwithouController1,
                                    builder:
                                        (context, textfiledwithouController1) {
                                      return CustomTextFormField(
                                          controller:
                                              textfiledwithouController1,
                                          contentPadding: getPadding(
                                              left: 12,
                                              top: 15,
                                              right: 12,
                                              bottom: 15),
                                          textStyle: CustomTextStyles
                                              .titleMediumBluegray900Medium,
                                          hintText: "lbl_rucksack".tr,
                                          hintStyle: CustomTextStyles
                                              .titleMediumBluegray900Medium,
                                          defaultBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          enabledBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          focusedBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900,
                                          disabledBorderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBluegray900);
                                    })),
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                margin: getMargin(left: 16),
                                padding: getPadding(all: 17),
                                decoration:
                                    IconButtonStyleHelper.fillPrimaryTL25,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGrid))
                          ])),
                      Padding(
                          padding: getPadding(left: 13, top: 26),
                          child: Row(children: [
                            BlocSelector<AddChecklistBloc, AddChecklistState,
                                    bool?>(
                                selector: (state) => state.isCheckbox,
                                builder: (context, isCheckbox) {
                                  return CustomCheckboxButton(
                                      text: "lbl_clothes".tr,
                                      value: isCheckbox,
                                      padding: getPadding(top: 1, bottom: 1),
                                      textStyle: theme.textTheme.labelLarge!,
                                      onChange: (value) {
                                        context.read<AddChecklistBloc>().add(
                                            ChangeCheckBoxEvent(value: value));
                                      });
                                }),
                            CustomIconButton(
                                height: 20,
                                width: 20,
                                margin: getMargin(left: 92),
                                padding: getPadding(all: 7),
                                decoration:
                                    IconButtonStyleHelper.fillBluegray900,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGroup441))
                          ])),
                      Padding(
                          padding: getPadding(left: 14, top: 32, bottom: 5),
                          child: Row(children: [
                            BlocSelector<AddChecklistBloc, AddChecklistState,
                                    bool?>(
                                selector: (state) => state.isCheckbox1,
                                builder: (context, isCheckbox1) {
                                  return CustomCheckboxButton(
                                      text: "lbl_breakfast".tr,
                                      value: isCheckbox1,
                                      padding: getPadding(top: 1, bottom: 1),
                                      textStyle: theme.textTheme.labelLarge!,
                                      onChange: (value) {
                                        context.read<AddChecklistBloc>().add(
                                            ChangeCheckBox1Event(value: value));
                                      });
                                }),
                            CustomIconButton(
                                height: 20,
                                width: 20,
                                margin: getMargin(left: 81),
                                padding: getPadding(all: 7),
                                decoration:
                                    IconButtonStyleHelper.fillBluegray900,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGroup441))
                          ]))
                    ]))));
  }

  /// Navigates to the checkListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the checkListScreen.
  onTapBiarrowright5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkListScreen,
    );
  }
}
