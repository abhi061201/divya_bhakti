import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/modules/home/view/HomeView.dart';
import 'package:divya_bhakti/app/modules/japa%20count/view/japa_view.dart';
import 'package:divya_bhakti/app/ui/login_view.dart';
import 'package:divya_bhakti/app/ui/signup_view.dart';
import 'package:divya_bhakti/app/ui/starting_view.dart';
import 'package:get/get.dart';
import '../modules/splash_screen/splash_screen.dart';

class appPages {
  static final route = [
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => Splash_Screen(),
    ),
    GetPage(
      name: Routes.STARTING_VIEW,
      page: () => starting_view(),
    ),
    GetPage(
      name: Routes.SIGNUP_VIEW,
      page: () => signup_view(),
    ),
    GetPage(
      name: Routes.LOGIN_VIEW,
      page: () => login_view(),
    ),
    GetPage(
      name: Routes.HomeView,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.JapaView,
      page: () => JapaView(),
    ),
    
  ];
}
