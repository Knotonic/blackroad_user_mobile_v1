import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/core/utils/validation_functions.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_checkbox_button.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(85),
                leadingWidth: 57,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgBiarrowright,
                    margin: getMargin(left: 25, top: 11, bottom: 12),
                    onTap: () {
                      onTapBiarrowright1(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_build_your_itinerary".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 10, top: 52, right: 10, bottom: 52),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 14, right: 14),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_itinerary_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallOnError
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.01))),
                                    BlocSelector<HomeBloc, HomeState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.nameController,
                                        builder: (context, nameController) {
                                          return CustomTextFormField(
                                              controller: nameController,
                                              margin: getMargin(top: 4),
                                              contentPadding: getPadding(
                                                  left: 12,
                                                  top: 15,
                                                  right: 12,
                                                  bottom: 15),
                                              textStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              hintText:
                                                  "msg_enter_your_trip".tr,
                                              hintStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (value) {
                                                if (!isText(value)) {
                                                  return "Please enter valid text";
                                                }
                                                return null;
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(left: 14, top: 26, right: 14),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_starting_point".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallOnError
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.01))),
                                    BlocSelector<HomeBloc, HomeState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.startingpointController,
                                        builder:
                                            (context, startingpointController) {
                                          return CustomTextFormField(
                                              controller:
                                                  startingpointController,
                                              margin: getMargin(top: 4),
                                              contentPadding: getPadding(
                                                  left: 12,
                                                  top: 15,
                                                  right: 12,
                                                  bottom: 15),
                                              textStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              hintText:
                                                  "msg_enter_your_journey".tr,
                                              hintStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              textInputAction:
                                                  TextInputAction.next);
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(left: 14, top: 25, right: 14),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("msg_destination_point".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallOnError
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.01))),
                                    BlocSelector<HomeBloc, HomeState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.destinationpoinController,
                                        builder: (context,
                                            destinationpoinController) {
                                          return CustomTextFormField(
                                              controller:
                                                  destinationpoinController,
                                              margin: getMargin(top: 5),
                                              contentPadding: getPadding(
                                                  left: 12,
                                                  top: 15,
                                                  right: 12,
                                                  bottom: 15),
                                              textStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              hintText:
                                                  "msg_enter_your_destination"
                                                      .tr,
                                              hintStyle: CustomTextStyles
                                                  .titleMediumOnError,
                                              textInputAction:
                                                  TextInputAction.next);
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(left: 15, top: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, right: 9),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_journey_date".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallOnError
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.01))),
                                                  BlocSelector<
                                                          HomeBloc,
                                                          HomeState,
                                                          TextEditingController?>(
                                                      selector: (state) =>
                                                          state.dateController,
                                                      builder: (context,
                                                          dateController) {
                                                        return CustomTextFormField(
                                                            width: getHorizontalSize(
                                                                154),
                                                            controller:
                                                                dateController,
                                                            margin: getMargin(
                                                                top: 4),
                                                            contentPadding:
                                                                getPadding(
                                                                    left: 16,
                                                                    top: 15,
                                                                    right: 16,
                                                                    bottom: 15),
                                                            textStyle: CustomTextStyles
                                                                .titleMediumOnError,
                                                            hintText:
                                                                "lbl_choose_date"
                                                                    .tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .titleMediumOnError,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next);
                                                      })
                                                ]))),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(left: 9),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_members".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallOnError
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.01))),
                                                  BlocSelector<
                                                          HomeBloc,
                                                          HomeState,
                                                          TextEditingController?>(
                                                      selector: (state) => state
                                                          .rectangle230Controller,
                                                      builder: (context,
                                                          rectangle230Controller) {
                                                        return CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    154),
                                                            controller:
                                                                rectangle230Controller,
                                                            margin: getMargin(
                                                                top: 5));
                                                      })
                                                ])))
                                  ])),
                          Container(
                              width: getHorizontalSize(340),
                              margin: getMargin(left: 15, top: 24),
                              child: Text("msg_want_to_make_the".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      letterSpacing: getHorizontalSize(0.01)))),
                          BlocSelector<HomeBloc, HomeState, bool?>(
                              selector: (state) => state.isCheckbox,
                              builder: (context, isCheckbox) {
                                return CustomCheckboxButton(
                                    text: "msg_set_this_trip_as".tr,
                                    value: isCheckbox,
                                    margin:
                                        getMargin(left: 13, top: 31, right: 19),
                                    textStyle: theme.textTheme.titleSmall!,
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                          ChangeCheckBoxEvent(value: value));
                                    });
                              }),
                          CustomElevatedButton(
                              text: "lbl_create".tr,
                              margin: getMargin(
                                  left: 15, top: 29, right: 13, bottom: 5),
                              buttonStyle: CustomButtonStyles.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(40)))),
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallWhiteA70001)
                        ])))));
  }

  /// Navigates to the homeOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homeOneScreen.
  onTapBiarrowright1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeOneScreen,
    );
  }
}
