import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

Widget CustomBottomNavigationBar() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          'assets/images/bottom2.png',
        ),
        fit: BoxFit.fill,
      ),
    ),
    height: Get.height * 0.07,
    width: Get.width,
    child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bottombarWidget(
            title: 'Home',
            icondata_border: Icons.home_outlined,
            iconData: Icons.home,
            callback: (){
              Get.offAllNamed(Routes.HomeView);
            }
          ),
          bottombarWidget(
            title: 'Search',
            icondata_border: Icons.search_outlined,
            iconData: Icons.search,
          ),
          Container(
            child: Image(
              image: AssetImage(
                  'assets/images/divya-bhakti-logo-[Recovered] (1) 1.png'),
            ),
            height: 35,
          ),
          bottombarWidget(
            title: 'Community',
            icondata_border: FontAwesomeIcons.globe,
            iconData: FontAwesomeIcons.earth,
          ),
          bottombarWidget(
            title: 'History',
            icondata_border: Icons.history_outlined,
            iconData: Icons.history,
          )
        ],
      ),
    ),
  );
}

Widget bottombarWidget({
  String? title,
  IconData? iconData,
  IconData? icondata_border,
  Color? iconColor,
  Callback? callback,
}) {
  return InkWell(
    onTap: callback,
    child: Column(
      children: [
        Stack(
          children: [
            Icon(
              iconData,
              color: Colors.red,
              size: 20,
            ),
            Icon(
              icondata_border,
              color: Colors.yellow,
              size: 20,
            ),
          ],
        ),
        Text(
          '$title',
          style: TextStyle(color: Colors.white, fontSize: 12),
        )
      ],
    ),
  );
}
