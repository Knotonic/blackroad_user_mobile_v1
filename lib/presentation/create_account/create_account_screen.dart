import 'package:blackroad_v1/core/utils/root_widget.dart';

import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/core/utils/validation_functions.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';
import 'package:blackroad_v1/widgets/custom_text_form_field.dart';

import '../../widgets/custom_dropdown.dart';
import 'bloc/create_account_bloc.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateAccountBloc>(
      create: (context) => CreateAccountBloc(CreateAccountState())..add(CreateAccountInitialEvent()),
      child: CreateAccountScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: RootWidget(
        child: Scaffold(
          backgroundColor: appTheme.whiteA70001,
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
            height: getVerticalSize(
              71,
            ),
            leadingWidth: 64,
            leading: AppbarIconbutton(
              onTap: () {
                NavigatorService.goBack();
              },
              svgPath: ImageConstant.imgBiarrowright,
              margin: getMargin(
                left: 24,
                top: 8,
                bottom: 8,
              ),
            ),
            title: AppbarSubtitle5(
              text: "lbl_back".tr,
              margin: getMargin(
                left: 16,
              ),
            ),
          ),
          body: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              height: double.infinity,
              padding: getPadding(
                left: 23,
                top: 26,
                right: 23,
                bottom: 26,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        152,
                      ),
                      margin: getMargin(
                        left: 3,
                      ),
                      child: Text(
                        "msg_create_your_account".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 20,
                      ),
                      child: Builder(builder: (context) {
                        final userName = context
                            .select((CreateAccountBloc data) => data.state.username);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_user_name2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: (userName ?? '').length == 0
                                    ? CustomTextStyles.titleSmallOnError
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))
                                    : CustomTextStyles.titleSmallBluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))),
                            CustomTextFormField(
                              controller: context.read<CreateAccountBloc>().userName,
                              focusNode:
                                  context.read<CreateAccountBloc>().userNameNode,
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
                                  CustomTextStyles.titleMediumBluegray900Medium,
                              hintText: "lbl_enter_user_name".tr,
                              hintStyle: CustomTextStyles.titleMediumOnError,
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid user name";
                                }
                                return null;
                              },
                              onChange: (value) {
                                context
                                    .read<CreateAccountBloc>()
                                    .add(ChangeUserNameEvent(value));
                              },
                              focusedBorderDecoration:
                                  (userName ?? '').length == 0
                                      ? null
                                      : TextFormFieldStyleHelper
                                          .outlineBluegray900,
                              defaultBorderDecoration:
                                  (userName ?? '').length == 0
                                      ? null
                                      : TextFormFieldStyleHelper
                                          .outlineBluegray900,
                              enabledBorderDecoration:
                                  (userName ?? '').length == 0
                                      ? null
                                      : TextFormFieldStyleHelper
                                          .outlineBluegray900,
                            )
                          ],
                        );
                      }),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 25,
                      ),
                      child: Builder(builder: (context) {
                        final gender = context
                            .select((CreateAccountBloc data) => data.state.gender);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_gender".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: (gender ?? '').length == 0
                                    ? CustomTextStyles.titleSmallOnError
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))
                                    : CustomTextStyles.titleSmallBluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))),
                            CustomDropDown(
                              items: context.read<CreateAccountBloc>().gender,
                              focusNode: context.read<CreateAccountBloc>().genderNode,
                              margin: getMargin(
                                top: 5,
                              ),
                              contentPadding: getPadding(
                                left: 16,
                                top: 15,
                                right: 16,
                                bottom: 15,
                              ),
                              textStyle:
                                  CustomTextStyles.titleMediumBluegray900Medium,
                              hintText: "lbl_select_gender".tr,
                              hintStyle: CustomTextStyles.titleMediumOnError,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter gender";
                                }
                                return null;
                              },
                              onChange: (value) {
                                Logger.log("what is the value");
                                Logger.log(value); // context
                                context
                                    .read<CreateAccountBloc>()
                                    .add(ChangeGenderEvent(value));
                              },
                              focusedBorderDecoration: (gender ?? '').length ==
                                      0
                                  ? null
                                  : TextFormFieldStyleHelper.outlineBluegray900,
                              defaultBorderDecoration: (gender ?? '').length ==
                                      0
                                  ? null
                                  : TextFormFieldStyleHelper.outlineBluegray900,
                              enabledBorderDecoration: (gender ?? '').length ==
                                      0
                                  ? null
                                  : TextFormFieldStyleHelper.outlineBluegray900,
                            )
                          ],
                        );
                      }),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 25,
                      ),
                      child: Builder(builder: (context) {
                        final dob =
                            context.select((CreateAccountBloc data) => data.state.dob);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_date_of_birth".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: dob == null
                                    ? CustomTextStyles.titleSmallOnError
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))
                                    : CustomTextStyles.titleSmallBluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))),
                            CustomTextFormField(
                              controller: context.read<CreateAccountBloc>().dob,
                              focusNode: context.read<CreateAccountBloc>().dobNode,
                              readonly: true,
                              suffix: InkWell(
                                  onTap: () async {
                                    final DateTime? picked =
                                        await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            initialDatePickerMode:
                                                DatePickerMode.day,
                                            firstDate: DateTime(2015),
                                            lastDate: DateTime(2101));
                                    if (picked != null) {
                                      context
                                          .read<CreateAccountBloc>()
                                          .add(ChangeDOBEvent(picked));

                                      context.read<CreateAccountBloc>().dob.text =
                                          picked.toString();
                                    }
                                  },
                                  child: Icon(Icons.calendar_month)),
                              margin: getMargin(
                                top: 5,
                              ),
                              contentPadding: getPadding(
                                left: 16,
                                top: 15,
                                right: 16,
                                bottom: 15,
                              ),
                              textStyle:
                                  CustomTextStyles.titleMediumBluegray900Medium,
                              hintText: "lbl_select_your_dob".tr,
                              hintStyle: CustomTextStyles.titleMediumOnError,
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please select dob";
                                }
                                return null;
                              },
                              focusedBorderDecoration: dob == null
                                  ? null
                                  : TextFormFieldStyleHelper.outlineBluegray900,
                              defaultBorderDecoration: dob == null
                                  ? null
                                  : TextFormFieldStyleHelper.outlineBluegray900,
                              enabledBorderDecoration: dob == null
                                  ? null
                                  : TextFormFieldStyleHelper.outlineBluegray900,
                            )
                          ],
                        );
                      }),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 25,
                      ),
                      child: Builder(builder: (context) {
                        final mobileNumber = context.select(
                            (CreateAccountBloc data) => data.state.mobileNumber);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_mobile_number".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: (mobileNumber ?? '').length == 0
                                    ? CustomTextStyles.titleSmallOnError
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))
                                    : CustomTextStyles.titleSmallBluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.01))),
                            CustomTextFormField(
                              controller:
                                  context.read<CreateAccountBloc>().mobileNumber,
                              focusNode:
                                  context.read<CreateAccountBloc>().mobileNumberNode,
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
                                  CustomTextStyles.titleMediumBluegray900Medium,
                              hintText: "msg_enter_your_number".tr,
                              hintStyle: CustomTextStyles.titleMediumOnError,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              },
                              onChange: (value) {
                                context
                                    .read<CreateAccountBloc>()
                                    .add(ChangeMobileNumberEvent(value));
                              },
                              focusedBorderDecoration:
                                  (mobileNumber ?? '').length == 0
                                      ? null
                                      : TextFormFieldStyleHelper
                                          .outlineBluegray900,
                              defaultBorderDecoration:
                                  (mobileNumber ?? '').length == 0
                                      ? null
                                      : TextFormFieldStyleHelper
                                          .outlineBluegray900,
                              enabledBorderDecoration:
                                  (mobileNumber ?? '').length == 0
                                      ? null
                                      : TextFormFieldStyleHelper
                                          .outlineBluegray900,
                            )
                          ],
                        );
                      }),
                    ),
                    CustomElevatedButton(
                      text: "lbl_next".tr,
                      margin: getMargin(
                        left: 2,
                        top: 26,
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

                    //  KeyboardVisiblity(getVerticalSize(100))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
