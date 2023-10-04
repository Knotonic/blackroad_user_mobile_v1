import '../check_list_screen/widgets/check_list_item_widget.dart';
import 'bloc/check_list_bloc.dart';
import 'models/check_list_item_model.dart';
import 'models/check_list_model.dart';
import 'package:flutter/material.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:blackroad_v1/widgets/app_bar/appbar_title.dart';
import 'package:blackroad_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:blackroad_v1/widgets/custom_floating_button.dart';

class CheckListScreen extends StatelessWidget {
  const CheckListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckListBloc>(
        create: (context) =>
            CheckListBloc(CheckListState(checkListModelObj: CheckListModel()))
              ..add(CheckListInitialEvent()),
        child: CheckListScreen());
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
                      onTapBiarrowright4(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_checklist".tr, margin: getMargin(left: 58))),
            body: Padding(
                padding: getPadding(left: 25, top: 1, right: 19, bottom: 1),
                child: BlocSelector<CheckListBloc, CheckListState,
                        CheckListModel?>(
                    selector: (state) => state.checkListModelObj,
                    builder: (context, checkListModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(12));
                          },
                          itemCount:
                              checkListModelObj?.checkListItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            CheckListItemModel model =
                                checkListModelObj?.checkListItemList[index] ??
                                    CheckListItemModel();
                            return CheckListItemWidget(model);
                          });
                    })),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    svgPath: ImageConstant.imgGrid,
                    height: getVerticalSize(25.0),
                    width: getHorizontalSize(25.0)))));
  }

  /// Navigates to the tripOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the tripOneScreen.
  onTapBiarrowright4(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tripOneScreen,
    );
  }
}
