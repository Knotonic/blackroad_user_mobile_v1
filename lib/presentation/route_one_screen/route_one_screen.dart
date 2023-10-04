import '../route_one_screen/widgets/route_one_item_widget.dart';
import 'bloc/route_one_bloc.dart';
import 'models/route_one_item_model.dart';
import 'models/route_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:blackroad_v1/core/app_export.dart';
import 'package:blackroad_v1/widgets/custom_elevated_button.dart';

class RouteOneScreen extends StatelessWidget {
  const RouteOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RouteOneBloc>(
        create: (context) =>
            RouteOneBloc(RouteOneState(routeOneModelObj: RouteOneModel()))
              ..add(RouteOneInitialEvent()),
        child: RouteOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 18, right: 18),
                child: Container(
                    height: getVerticalSize(1905),
                    width: getHorizontalSize(333),
                    margin: getMargin(top: 5),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      BlocSelector<RouteOneBloc, RouteOneState, RouteOneModel?>(
                          selector: (state) => state.routeOneModelObj,
                          builder: (context, routeOneModelObj) {
                            return StaggeredGridView.countBuilder(
                                shrinkWrap: true,
                                primary: false,
                                crossAxisCount: 4,
                                crossAxisSpacing: getHorizontalSize(20),
                                mainAxisSpacing: getHorizontalSize(20),
                                staggeredTileBuilder: (index) {
                                  return StaggeredTile.fit(2);
                                },
                                itemCount:
                                    routeOneModelObj?.routeOneItemList.length ??
                                        0,
                                itemBuilder: (context, index) {
                                  RouteOneItemModel model = routeOneModelObj
                                          ?.routeOneItemList[index] ??
                                      RouteOneItemModel();
                                  return RouteOneItemWidget(model);
                                });
                          }),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              margin: getMargin(top: 697, bottom: 1152),
                              padding: getPadding(
                                  left: 27, top: 10, right: 27, bottom: 10),
                              decoration: AppDecoration.fill3.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder28),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 11, bottom: 9),
                                        child: Text("lbl_detail".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeWhiteA70001_1
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.06)))),
                                    CustomElevatedButton(
                                        text: "lbl_route".tr,
                                        margin: getMargin(left: 20),
                                        buttonStyle: CustomButtonStyles
                                            .fillWhiteA70001TL16
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        getHorizontalSize(73),
                                                        getVerticalSize(36)))),
                                        buttonTextStyle: CustomTextStyles
                                            .labelLargeBluegray900,
                                        onTap: () {
                                          onTapRoute(context);
                                        }),
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 12, bottom: 8),
                                        child: Text("lbl_gallery".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeWhiteA70001_1
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.06)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 40, top: 11, bottom: 9),
                                        child: Text("lbl_members".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeWhiteA70001_1
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.06))))
                                  ])))
                    ])))));
  }

  /// Navigates to the routeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the routeScreen.
  onTapRoute(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.routeScreen,
    );
  }
}
