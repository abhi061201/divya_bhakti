import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:divya_bhakti/app/modules/global/customBottomNavigationBar.dart';
import 'package:divya_bhakti/app/modules/global/global_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class SettingView extends StatelessWidget {
  SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background 2.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        backgroundColor: Colors.transparent,
        body: Opacity(
          opacity: 0.8,
          child: Container(
            height: Get.height,
            width: Get.width,
            // margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              // color: Colors.red,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(251, 14, 2, 1),
                  Color(0xffC7451B),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tuesday, Oct 03 ',
                          style: TextStyle(
                            color: appcolor.yellowColor,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            size: 20,
                            color: appcolor.yellowColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            color: appcolor.yellowColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.008,
                    ),
                    headingContainer('Account'),
                    SizedBox(
                      height: Get.height * 0.005,
                    ),
                    ItemWidget('Edit Profile', Icons.edit, callbackAction: () {
                      Get.toNamed(Routes.EditProfileView);
                    }),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    ItemWidget('Change Password', Icons.lock),
                    SizedBox(
                      height: Get.height * 0.008,
                    ),
                    headingContainer('Connected Accounts'),
                    SizedBox(
                      height: Get.height * 0.005,
                    ),
                    ItemWidget(
                      ' Facebook',
                      FontAwesomeIcons.facebook,
                    ),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    ItemWidget(
                      ' Google',
                      FontAwesomeIcons.google,
                    ),
                    SizedBox(
                      height: Get.height * 0.008,
                    ),
                    headingContainer('App Setting'),
                    SizedBox(
                      height: Get.height * 0.005,
                    ),
                    ItemWidget(
                      ' Location',
                      FontAwesomeIcons.locationArrow,
                    ),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    ItemWidget(
                      ' Notification',
                      Icons.notifications,
                    ),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    ItemWidget(
                      ' Reminder 08:00 AM',
                      Icons.alarm,
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    ItemWidget(
                      ' Invite Friends',
                      Icons.people,
                    ),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    ItemWidget(
                      ' Rate Us',
                      Icons.star,
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    ItemWidget(
                      ' Delete Account',
                      Icons.delete,
                    ),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    ItemWidget(
                      ' Logout',
                      Icons.logout,
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    followUsOnContainer(),
                  ],
                ).paddingSymmetric(
                  horizontal: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget headingContainer(String title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: Get.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Color(0xffFD0505),
    ),
    child: Text(
      title,
      style: TextStyle(
          color: appcolor.yellowColor,
          fontSize: 16,
          fontWeight: FontWeight.w700),
    ),
  );
}

Widget ItemWidget(String title, IconData iconData, {Callback? callbackAction}) {
  return InkWell(
    onTap: callbackAction,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 0),
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xffFD0505)),
      child: Row(
        children: [
          Icon(
            iconData,
            color: appcolor.yellowColor,
          ),
          Text(
            title,
            style: TextStyle(
                color: appcolor.yellowColor,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}

Widget followUsOnContainer() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: Text(
          'Follow Us On ',
          style: TextStyle(color: appcolor.yellowColor, fontSize: 20),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                Icon(
                  FontAwesomeIcons.facebook,
                  color: appcolor.yellowColor,
                  size: 30,
                ),
                Text(
                  'Facebook',
                  style: TextStyle(
                    color: appcolor.yellowColor,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  FontAwesomeIcons.instagram,
                  color: appcolor.yellowColor,
                  size: 30,
                ),
                Text(
                  'Instagram',
                  style: TextStyle(
                    color: appcolor.yellowColor,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ).paddingOnly(
        top: 20,
        bottom: 30,
      ),
      Center(
        child: Text(
          'Version 1.1.1',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      SizedBox(
        height: Get.height * 0.01,
      ),
      Center(
        child: Text(
          'Logged in as amrit.bmdu@gmail.com',
          style: TextStyle(color: appcolor.yellowColor, fontSize: 16),
        ),
      ),
      SizedBox(
        height: Get.height * 0.01,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Container(
            height: 10,
            color: Colors.white,
            width: 1,
          ),
          Text(
            'Terms and Conditions',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      SizedBox(
        height: Get.height * 0.05,
      ),
    ],
  );
}
