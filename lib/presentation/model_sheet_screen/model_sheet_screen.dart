import 'bloc/model_sheet_bloc.dart';
import 'models/model_sheet_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class ModelSheetScreen extends StatelessWidget {
  const ModelSheetScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ModelSheetBloc>(
      create: (context) => ModelSheetBloc(ModelSheetState(
        modelSheetModelObj: ModelSheetModel(),
      ))
        ..add(ModelSheetInitialEvent()),
      child: ModelSheetScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 10,
            right: 24,
            bottom: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocSelector<ModelSheetBloc, ModelSheetState,
                  TextEditingController?>(
                selector: (state) => state.copytextController,
                builder: (context, copytextController) {
                  return CustomTextFormField(
                    controller: copytextController,
                    margin: getMargin(
                      top: 5,
                    ),
                    contentPadding: getPadding(
                      top: 13,
                      right: 30,
                      bottom: 13,
                    ),
                    textStyle: theme.textTheme.labelLarge!,
                    hintText: "lbl_copy_text".tr,
                    hintStyle: theme.textTheme.labelLarge!,
                    textInputAction: TextInputAction.next,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 9,
                        right: 16,
                        bottom: 9,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCopy,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        42,
                      ),
                    ),
                    filled: true,
                    fillColor: appTheme.whiteA70001,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                  );
                },
              ),
              BlocSelector<ModelSheetBloc, ModelSheetState,
                  TextEditingController?>(
                selector: (state) => state.replyController,
                builder: (context, replyController) {
                  return CustomTextFormField(
                    controller: replyController,
                    margin: getMargin(
                      top: 10,
                    ),
                    contentPadding: getPadding(
                      top: 13,
                      right: 30,
                      bottom: 13,
                    ),
                    textStyle: theme.textTheme.labelLarge!,
                    hintText: "lbl_reply".tr,
                    hintStyle: theme.textTheme.labelLarge!,
                    textInputAction: TextInputAction.next,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 9,
                        right: 16,
                        bottom: 9,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgReplyGray900,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        42,
                      ),
                    ),
                    filled: true,
                    fillColor: appTheme.whiteA70001,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                  );
                },
              ),
              BlocSelector<ModelSheetBloc, ModelSheetState,
                  TextEditingController?>(
                selector: (state) => state.edittextController,
                builder: (context, edittextController) {
                  return CustomTextFormField(
                    controller: edittextController,
                    margin: getMargin(
                      top: 10,
                    ),
                    contentPadding: getPadding(
                      top: 13,
                      right: 30,
                      bottom: 13,
                    ),
                    textStyle: theme.textTheme.labelLarge!,
                    hintText: "lbl_edit_text".tr,
                    hintStyle: theme.textTheme.labelLarge!,
                    textInputAction: TextInputAction.next,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 9,
                        right: 16,
                        bottom: 9,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEditGray900,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        42,
                      ),
                    ),
                    filled: true,
                    fillColor: appTheme.whiteA70001,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                  );
                },
              ),
              BlocSelector<ModelSheetBloc, ModelSheetState,
                  TextEditingController?>(
                selector: (state) => state.deleteController,
                builder: (context, deleteController) {
                  return CustomTextFormField(
                    controller: deleteController,
                    margin: getMargin(
                      top: 10,
                    ),
                    contentPadding: getPadding(
                      top: 13,
                      right: 30,
                      bottom: 13,
                    ),
                    textStyle: theme.textTheme.labelLarge!,
                    hintText: "lbl_delete".tr,
                    hintStyle: theme.textTheme.labelLarge!,
                    textInputAction: TextInputAction.next,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 9,
                        right: 16,
                        bottom: 9,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgTrashGray900,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        42,
                      ),
                    ),
                    filled: true,
                    fillColor: appTheme.whiteA70001,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.fillWhiteA70001TL4,
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BlocSelector<ModelSheetBloc, ModelSheetState,
            TextEditingController?>(
          selector: (state) => state.markasunreadController,
          builder: (context, markasunreadController) {
            return CustomTextFormField(
              controller: markasunreadController,
              margin: getMargin(
                left: 24,
                right: 24,
                bottom: 14,
              ),
              contentPadding: getPadding(
                top: 13,
                right: 30,
                bottom: 13,
              ),
              textStyle: theme.textTheme.labelLarge!,
              hintText: "lbl_mark_as_unread".tr,
              hintStyle: theme.textTheme.labelLarge!,
              prefix: Container(
                margin: getMargin(
                  left: 16,
                  top: 9,
                  right: 16,
                  bottom: 9,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgUnread,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: getVerticalSize(
                  42,
                ),
              ),
              filled: true,
              fillColor: appTheme.whiteA70001,
              defaultBorderDecoration:
                  TextFormFieldStyleHelper.fillWhiteA70001TL4,
              enabledBorderDecoration:
                  TextFormFieldStyleHelper.fillWhiteA70001TL4,
              focusedBorderDecoration:
                  TextFormFieldStyleHelper.fillWhiteA70001TL4,
              disabledBorderDecoration:
                  TextFormFieldStyleHelper.fillWhiteA70001TL4,
            );
          },
        ),
      ),
    );
  }
}
