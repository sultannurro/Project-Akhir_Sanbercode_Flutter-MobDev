import 'package:coffeskuyapp/pages/home_screen.dart';
import 'package:coffeskuyapp/pages/account_screen.dart';
import 'package:coffeskuyapp/pages/about_screen.dart';
import 'package:coffeskuyapp/routes/route_name.dart';
import 'package:get/get.dart';

class PageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.home_screen,
      page: () => HomeScreen(),
    ), // GetPage
    GetPage(
      name: RouteName.about_screen,
      page: () => AboutScreen(),
    ), // GetPage
    GetPage(
      name: RouteName.account_screen,
      page: () => AccountScreen(),
    ), // GetPage
  ];
}