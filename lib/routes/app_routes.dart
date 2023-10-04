import 'package:flutter/material.dart';
import 'package:blackroad_v1/presentation/map_screen/map_screen.dart';
import 'package:blackroad_v1/presentation/login_screen/login_screen.dart';
import 'package:blackroad_v1/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:blackroad_v1/presentation/sign_up_three_screen/sign_up_three_screen.dart';
import 'package:blackroad_v1/presentation/home_one_screen/home_one_screen.dart';
import 'package:blackroad_v1/presentation/trip_details_one_screen/trip_details_one_screen.dart';
import 'package:blackroad_v1/presentation/trip_details_two_screen/trip_details_two_screen.dart';
import 'package:blackroad_v1/presentation/trip_details_screen/trip_details_screen.dart';
import 'package:blackroad_v1/presentation/home_screen/home_screen.dart';
import 'package:blackroad_v1/presentation/trip_screen/trip_screen.dart';
import 'package:blackroad_v1/presentation/trip_one_screen/trip_one_screen.dart';
import 'package:blackroad_v1/presentation/map_two_screen/map_two_screen.dart';
import 'package:blackroad_v1/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:blackroad_v1/presentation/profile_page_two_screen/profile_page_two_screen.dart';
import 'package:blackroad_v1/presentation/profile_page_four_screen/profile_page_four_screen.dart';
import 'package:blackroad_v1/presentation/trip_details_three_screen/trip_details_three_screen.dart';
import 'package:blackroad_v1/presentation/route_one_screen/route_one_screen.dart';
import 'package:blackroad_v1/presentation/route_screen/route_screen.dart';
import 'package:blackroad_v1/presentation/expenses_payment_two_screen/expenses_payment_two_screen.dart';
import 'package:blackroad_v1/presentation/expenses_payment_one_screen/expenses_payment_one_screen.dart';
import 'package:blackroad_v1/presentation/expenses_payment_screen/expenses_payment_screen.dart';
import 'package:blackroad_v1/presentation/expenses_payment_three_screen/expenses_payment_three_screen.dart';
import 'package:blackroad_v1/presentation/frame_488_screen/frame_488_screen.dart';
import 'package:blackroad_v1/presentation/frame_489_screen/frame_489_screen.dart';
import 'package:blackroad_v1/presentation/frame_481_screen/frame_481_screen.dart';
import 'package:blackroad_v1/presentation/map1_screen/map1_screen.dart';
import 'package:blackroad_v1/presentation/map_one_screen/map_one_screen.dart';
import 'package:blackroad_v1/presentation/frame_502_screen/frame_502_screen.dart';
import 'package:blackroad_v1/presentation/model_sheet_one_screen/model_sheet_one_screen.dart';
import 'package:blackroad_v1/presentation/vehicle_list_screen/vehicle_list_screen.dart';
import 'package:blackroad_v1/presentation/add_vehicle_screen/add_vehicle_screen.dart';
import 'package:blackroad_v1/presentation/alert_box_screen/alert_box_screen.dart';
import 'package:blackroad_v1/presentation/frame_503_screen/frame_503_screen.dart';
import 'package:blackroad_v1/presentation/check_list_screen/check_list_screen.dart';
import 'package:blackroad_v1/presentation/add_checklist_screen/add_checklist_screen.dart';
import 'package:blackroad_v1/presentation/check_list_detatil_screen/check_list_detatil_screen.dart';
import 'package:blackroad_v1/presentation/budget_expenses_screen/budget_expenses_screen.dart';
import 'package:blackroad_v1/presentation/notification_screen/notification_screen.dart';
import 'package:blackroad_v1/presentation/member_two_screen/member_two_screen.dart';
import 'package:blackroad_v1/presentation/member_screen/member_screen.dart';
import 'package:blackroad_v1/presentation/model_sheet_screen/model_sheet_screen.dart';
import 'package:blackroad_v1/presentation/member_one_screen/member_one_screen.dart';
import 'package:blackroad_v1/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/otp_screen/otp_screen.dart';
import '../presentation/sign_up/sign_up_screen.dart';

class AppRoutes {
  static const String mapScreen = '/map_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String otpScreen = '/otp_screen';

  static const String signUpThreeScreen = '/sign_up_three_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String tripDetailsOneScreen = '/trip_details_one_screen';

  static const String tripDetailsTwoScreen = '/trip_details_two_screen';

  static const String tripDetailsScreen = '/trip_details_screen';

  static const String homeScreen = '/home_screen';

  static const String tripScreen = '/trip_screen';

  static const String tripOneScreen = '/trip_one_screen';

  static const String mapTwoScreen = '/map_two_screen';

  static const String profilePageOneScreen = '/profile_page_one_screen';

  static const String profilePageTwoScreen = '/profile_page_two_screen';

  static const String profilePageFourScreen = '/profile_page_four_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String tripDetailsThreeScreen = '/trip_details_three_screen';

  static const String routeOneScreen = '/route_one_screen';

  static const String routeScreen = '/route_screen';

  static const String expensesPaymentTwoScreen = '/expenses_payment_two_screen';

  static const String expensesPaymentOneScreen = '/expenses_payment_one_screen';

  static const String expensesPaymentScreen = '/expenses_payment_screen';

  static const String expensesPaymentThreeScreen =
      '/expenses_payment_three_screen';

  static const String frame488Screen = '/frame_488_screen';

  static const String frame489Screen = '/frame_489_screen';

  static const String frame481Screen = '/frame_481_screen';

  static const String map1Screen = '/map1_screen';

  static const String mapOneScreen = '/map_one_screen';

  static const String frame502Screen = '/frame_502_screen';

  static const String modelSheetOneScreen = '/model_sheet_one_screen';

  static const String vehicleListScreen = '/vehicle_list_screen';

  static const String addVehicleScreen = '/add_vehicle_screen';

  static const String alertBoxScreen = '/alert_box_screen';

  static const String frame503Screen = '/frame_503_screen';

  static const String checkListScreen = '/check_list_screen';

  static const String addChecklistScreen = '/add_checklist_screen';

  static const String checkListDetatilScreen = '/check_list_detatil_screen';

  static const String budgetExpensesScreen = '/budget_expenses_screen';

  static const String notificationScreen = '/notification_screen';

  static const String memberTwoScreen = '/member_two_screen';

  static const String memberScreen = '/member_screen';

  static const String modelSheetScreen = '/model_sheet_screen';

  static const String memberOneScreen = '/member_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        mapScreen: MapScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpTwoScreen: SignUpTwoScreen.builder,
        otpScreen: OtpScreen.builder,
        signUpThreeScreen: SignUpThreeScreen.builder,
        homeOneScreen: HomeOneScreen.builder,
        tripDetailsOneScreen: TripDetailsOneScreen.builder,
        tripDetailsTwoScreen: TripDetailsTwoScreen.builder,
        tripDetailsScreen: TripDetailsScreen.builder,
        homeScreen: HomeScreen.builder,
        tripScreen: TripScreen.builder,
        tripOneScreen: TripOneScreen.builder,
        mapTwoScreen: MapTwoScreen.builder,
        profilePageOneScreen: ProfilePageOneScreen.builder,
        profilePageTwoScreen: ProfilePageTwoScreen.builder,
        profilePageFourScreen: ProfilePageFourScreen.builder,
        signUpScreen: SignUpScreen.builder,
        tripDetailsThreeScreen: TripDetailsThreeScreen.builder,
        routeOneScreen: RouteOneScreen.builder,
        routeScreen: RouteScreen.builder,
        expensesPaymentTwoScreen: ExpensesPaymentTwoScreen.builder,
        expensesPaymentOneScreen: ExpensesPaymentOneScreen.builder,
        expensesPaymentScreen: ExpensesPaymentScreen.builder,
        expensesPaymentThreeScreen: ExpensesPaymentThreeScreen.builder,
        frame488Screen: Frame488Screen.builder,
        frame489Screen: Frame489Screen.builder,
        frame481Screen: Frame481Screen.builder,
        map1Screen: Map1Screen.builder,
        mapOneScreen: MapOneScreen.builder,
        frame502Screen: Frame502Screen.builder,
        modelSheetOneScreen: ModelSheetOneScreen.builder,
        vehicleListScreen: VehicleListScreen.builder,
        addVehicleScreen: AddVehicleScreen.builder,
        alertBoxScreen: AlertBoxScreen.builder,
        frame503Screen: Frame503Screen.builder,
        checkListScreen: CheckListScreen.builder,
        addChecklistScreen: AddChecklistScreen.builder,
        checkListDetatilScreen: CheckListDetatilScreen.builder,
        budgetExpensesScreen: BudgetExpensesScreen.builder,
        notificationScreen: NotificationScreen.builder,
        memberTwoScreen: MemberTwoScreen.builder,
        memberScreen: MemberScreen.builder,
        modelSheetScreen: ModelSheetScreen.builder,
        memberOneScreen: MemberOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
