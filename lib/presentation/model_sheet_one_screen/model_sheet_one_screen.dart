import 'bloc/model_sheet_one_bloc.dart';
import 'models/model_sheet_one_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

class ModelSheetOneScreen extends StatelessWidget {
  const ModelSheetOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ModelSheetOneBloc>(
      create: (context) => ModelSheetOneBloc(ModelSheetOneState(
        modelSheetOneModelObj: ModelSheetOneModel(),
      ))
        ..add(ModelSheetOneInitialEvent()),
      child: ModelSheetOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: getPadding(
              left: 23,
              top: 34,
              right: 23,
              bottom: 34,
            ),
            decoration: AppDecoration.fill,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 1,
                  ),
                  child: Text(
                    "lbl_add_expenses".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleLargeGray900,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_select_category".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBluegray200.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.01,
                          ),
                        ),
                      ),
                      BlocSelector<ModelSheetOneBloc, ModelSheetOneState,
                          TextEditingController?>(
                        selector: (state) => state.selectController,
                        builder: (context, selectController) {
                          return CustomTextFormField(
                            controller: selectController,
                            margin: getMargin(
                              top: 4,
                            ),
                            contentPadding: getPadding(
                              left: 16,
                              top: 15,
                              right: 16,
                              bottom: 15,
                            ),
                            textStyle: CustomTextStyles.titleMediumBluegray200,
                            hintText: "lbl_select".tr,
                            hintStyle: CustomTextStyles.titleMediumBluegray200,
                            textInputAction: TextInputAction.next,
                            defaultBorderDecoration:
                                TextFormFieldStyleHelper.outlineBluegray200,
                            enabledBorderDecoration:
                                TextFormFieldStyleHelper.outlineBluegray200,
                            focusedBorderDecoration:
                                TextFormFieldStyleHelper.outlineBluegray200,
                            disabledBorderDecoration:
                                TextFormFieldStyleHelper.outlineBluegray200,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 17,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_how_much_was_paid".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallOnError.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.01,
                          ),
                        ),
                      ),
                      BlocSelector<ModelSheetOneBloc, ModelSheetOneState,
                          TextEditingController?>(
                        selector: (state) => state.rectangle230Controller,
                        builder: (context, rectangle230Controller) {
                          return CustomTextFormField(
                            controller: rectangle230Controller,
                            margin: getMargin(
                              top: 5,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 17,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_when_it_was_paid".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBluegray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.01,
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          325,
                        ),
                        margin: getMargin(
                          top: 5,
                        ),
                        padding: getPadding(
                          left: 15,
                          top: 13,
                          right: 15,
                          bottom: 13,
                        ),
                        decoration: AppDecoration.txtOutline.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_apr_23_2022".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumBluegray900Medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 29,
                    bottom: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        text: "lbl_cancel".tr,
                        buttonStyle: CustomButtonStyles.fillGray200.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          getHorizontalSize(
                            154,
                          ),
                          getVerticalSize(
                            40,
                          ),
                        ))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                      CustomElevatedButton(
                        text: "lbl_add_expenses".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          getHorizontalSize(
                            153,
                          ),
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
