import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:get/get.dart';
import '../modules/splash_screen/splash_screen.dart';

class appPages {
  static final route = [
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => Splash_Screen(),
    ),
  ];
}
